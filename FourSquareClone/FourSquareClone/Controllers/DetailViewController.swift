//
//  DetailViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/16/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cat: CatResult?
    var query: CatQuery?
    var venueDetail: VenueDetail?
    let detailVC = DetailView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(detailVC)
        
        detailVC.directionButton.addTarget(self, action: #selector(mapSegue), for: .touchUpInside)
        detailVC.favoriteButton.addTarget(self, action: #selector(favoriteSegue), for: .touchUpInside)
        getDetails()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Tips", style: .plain, target: self, action: #selector(tipsPressed))
       
    }
    private func getDetails() {
        if let catID = cat?.venue?.id {
            APIClient.getVenueDetail(keyword: catID, lat: 40.69779079038551, lon: -73.9916819489333) { (detail, error) in
                if let error = error {
                    print(error)
                }
                if let detail = detail {
                    self.venueDetail = detail
                    self.setUpDetails()
                }
            }
        } else if let queryID = query?.id {
            APIClient.getVenueDetail(keyword: queryID, lat: 40.69779079038551, lon: -73.9916819489333) { (detail, error) in
                if let error = error {
                    print(error)
                } else if let detail = detail {
                    self.venueDetail = detail
                    self.setUpDetails()

                }
            }
            
        }
    }
    private func setUpDetails() {
        DispatchQueue.main.async {
            self.detailVC.titleLabel.text = self.venueDetail?.response.venue.name
        }
        
    }
    @objc private func mapSegue(){
        let vc = MapViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }

    @objc private func favoriteSegue() {
        let vc = CollectionListController()
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true, completion: nil)
    }
    
    @objc private func tipsPressed() {
        let tipVC = TipsViewController()
        navigationController?.pushViewController(tipVC, animated: true)
    }
}
