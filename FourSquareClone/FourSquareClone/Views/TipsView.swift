//
//  TipsView.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class TipsView: UIView {
    lazy var tipsTableView: UITableView = {
        let myTableView = UITableView()
        myTableView.register(TipTableViewCell.self, forCellReuseIdentifier: "tipCell")
        return myTableView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .lightGray
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func commonInit() {
        setUpTableViewConstrains()
    }

    private func setUpTableViewConstrains() {
        addSubview(tipsTableView)
        tipsTableView.translatesAutoresizingMaskIntoConstraints = false
        tipsTableView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        tipsTableView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        tipsTableView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        tipsTableView.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor).isActive = true
        
    }
    
}
