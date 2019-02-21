//
//  SearchView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SearchView: UIView {
    lazy var searchTableView: UITableView = {
        let myTableView = UITableView()
        return myTableView
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
}
