//
//  DetailViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/16/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var venueName: String!
    var lat: Double!
    var long: Double!
    var venueDetail: SingleVenueInfo!
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
            APIClient.getVenueDetail(keyword: self.venueName, lat: self.lat, lon: self.long) { (detail, error) in
                if let error = error {
                    print(error)
                }
                else if let detail = detail {
                    self.venueDetail = detail.response.venue
                    self.setUpDetails()
                }
    }
    }
    private func setUpDetails() {
        DispatchQueue.main.async {
            self.detailVC.titleLabel.text = self.venueDetail.name
            self.detailVC.addressLabel.text = self.venueDetail.location.address ?? "No Address"
            let photos = self.venueDetail.photos.groups
            guard photos.count > 0 else { return }
            let groups = photos[photos.count - 1].items
            guard groups.count > 0 else { return }
            let id = groups[groups.count - 1].id
            APIClient.getImage(id: id, completionHandler: { (image, error) in
                if let error = error {
                    print(error)
                } else if let image = image {
                    let prefix = image.response.photo.prefix
                    let suffix = image.response.photo.suffix
                  let photoString = prefix + "original" + suffix
                    ImageHelper.fetchImageFromNetwork(urlString: photoString, completion: { (error, image) in
                        if let error = error {
                            print(error)
                        } else if let image = image {
                            self.detailVC.detailImage.image = image
                        }
                    })
                }
            })
        }
    }
    @objc private func mapSegue(){
        let vc = MapViewController()
        vc.venueLocation = venueDetail
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

