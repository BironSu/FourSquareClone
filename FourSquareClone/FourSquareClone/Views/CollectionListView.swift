//
//  CollectionListView.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CollectionListView: UIView {
    lazy var collectionListTableView: UITableView = {
        let myTableView = UITableView()
        myTableView.layer.cornerRadius = 10
//        myTableView.backgroundColor = .white
        myTableView.register(CollectionListTableViewCell.self, forCellReuseIdentifier: "CollectionCell")
        return myTableView
    }()
    
    lazy var collectionLabel: UILabel = {
        let label = UILabel()
        label.text = "Select a collection list to save"
        label.textColor = .white
        label.font = UIFont.init(name: "helvetica", size: 40)
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var createButton: UIButton = {
       let button = UIButton()
        button.setTitle("Create", for: .normal)
       button.titleLabel?.textColor = .white
        button.backgroundColor = .red
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .gray
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    private func commonInit() {
       setupTableViewConstrinas()
        setLabelConstrains()
        setButtonContrains()
    }

    func setupTableViewConstrinas() {
    addSubview(collectionListTableView)
        collectionListTableView.translatesAutoresizingMaskIntoConstraints = false
        collectionListTableView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.8).isActive = true
        collectionListTableView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.4).isActive = true
        collectionListTableView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        collectionListTableView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setLabelConstrains() {
        addSubview(collectionLabel)
        collectionLabel.translatesAutoresizingMaskIntoConstraints = false
        collectionLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 80).isActive = true
        collectionLabel.centerXAnchor.constraint(equalTo: collectionListTableView.centerXAnchor, constant: -10).isActive = true
      
    }
    
    func setButtonContrains() {
        addSubview(createButton)
        createButton.translatesAutoresizingMaskIntoConstraints = false
        createButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        createButton.topAnchor.constraint(equalTo: collectionListTableView.bottomAnchor, constant: 30).isActive = true
        createButton.widthAnchor.constraint(equalTo: collectionListTableView.widthAnchor, multiplier: 0.7).isActive = true
        createButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }


    

}
