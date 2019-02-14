//
//  SearchView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SearchView: UIView {
<<<<<<< HEAD

    
=======
    lazy var searchTableView: UITableView = {
        let myTableView = UITableView()
        return myTableView
    }()
    
    lazy var searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.placeholder = "Search for event..."
        sb.backgroundImage = UIImage()
        sb.backgroundColor = .clear
        return sb
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
        commonInit()
    }
    
    
    private func commonInit() {
        setupTableViewContrains()
    }
    
   
    
    private func setupTableViewContrains() {
        addSubview(searchTableView)
        searchTableView.translatesAutoresizingMaskIntoConstraints = false
        searchTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        searchTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        searchTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        searchTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
>>>>>>> e24b6565c8875f12bc531d0b21f5baceb61215c9

}
