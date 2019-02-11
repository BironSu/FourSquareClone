//
//  HistoryView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

protocol HistoryViewDelegate: AnyObject {
    func seguePressed()
}

class HistoryView: UIView {

    weak var delegate: HistoryViewDelegate?
    
    lazy var historyTableView: UITableView = {
       let tableView = UITableView()
       tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
       return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
        addSubview(historyTableView)
        setConstraints()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        fatalError("init(coder:) failed to implement")
    }
    
    private func commonInit(){
        backgroundColor = .yellow
    }

    func setConstraints() {
        historyTableView.translatesAutoresizingMaskIntoConstraints = false
        historyTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        historyTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        historyTableView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        historyTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
}
