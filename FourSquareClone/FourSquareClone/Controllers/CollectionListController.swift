//
//  CollectionListController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CollectionListController: UIViewController {
    let collectionListView = CollectionListView()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionListView)
        collectionListView.collectionListTableView.delegate = self
        collectionListView.collectionListTableView.dataSource = self
        
    }
    
    
}
extension CollectionListController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    
    
}

extension CollectionListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionCell") as? CollectionListTableViewCell else { return UITableViewCell() }
        cell.backgroundColor = .red
        
        return cell
    }
    
    
}
