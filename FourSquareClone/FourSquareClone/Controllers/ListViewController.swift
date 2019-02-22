//
//  ListViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    let listView = ListView()
    var collectionFolders = [VenueFolder]() {
        didSet {
            self.listView.listCollectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(listView)
        listView.listCollectionView.dataSource = self
        listView.listCollectionView.delegate = self
        listView.createListButton.addTarget(self, action: #selector(createFunc), for: .touchUpInside)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.collectionFolders = SavedVenueModel.getVenueFolders()
    }
    
    
    
    @objc private func createFunc() {
        let vc = CreateViewController()
        
        
        
        
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
}

extension ListViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionFolders.count > 0 {
            return collectionFolders.count
        } else {
            return 2
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCell", for: indexPath) as? ListCollectionViewCell else { return UICollectionViewCell() }
        let folder = collectionFolders[indexPath.row]
        cell.titleLabel.text = folder.title
        cell.descriptionLabel.text = folder.description
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = SavedViewController()
        
        
        
        
        
        
    
        navigationController?.pushViewController(vc, animated: true)
    }

}
