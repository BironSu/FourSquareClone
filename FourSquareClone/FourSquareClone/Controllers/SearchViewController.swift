//
//  SearchViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    let searchView = SearchView()
    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width - 130, height: 20))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchView)
        let leftNavBarButton = UIBarButtonItem(customView: self.searchBar)
        let rightnavBarButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPressed))
        self.navigationItem.rightBarButtonItem = rightnavBarButton
        self.navigationItem.leftBarButtonItem = leftNavBarButton
    }
    
    @objc private func cancelPressed() {
        print("cancel pressed")
    }
}
