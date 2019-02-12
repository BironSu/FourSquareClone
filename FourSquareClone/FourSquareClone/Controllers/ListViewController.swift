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
    let savedView = SavedView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(listView)
        view.addSubview(savedView)
        listView.listCollectionView.dataSource = self
        listView.listCollectionView.delegate = self
    }
    

   

}
extension ListViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCell", for: indexPath) as? ListCollectionViewCell else { return UICollectionViewCell() }
        return cell
    }
    
    
    
}
