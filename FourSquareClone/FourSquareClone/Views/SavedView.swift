//
//  SavedView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SavedView: UIView {

    lazy var savedTableView: UITableView = {
        let savedTV = UITableView()
        savedTV.backgroundColor = .red
        return savedTV
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        fatalError("init(coder:) failed to implement")
    }
    private func commonInit(){
        backgroundColor = .white
        setupTableView()
    }
}
extension SavedView {
    private func setupTableView() {
        addSubview(savedTableView)
        savedTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            savedTableView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            savedTableView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            savedTableView.heightAnchor.constraint(equalTo: self.heightAnchor),
            savedTableView.widthAnchor.constraint(equalTo: self.widthAnchor)
            ])
    }
    
}
