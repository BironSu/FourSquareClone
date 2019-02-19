//
//  ListView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListView: UIView {
    lazy var createListButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create", for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.titleLabel?.textColor = .white
        button.isEnabled = true
        return button
    }()
    
    
    lazy var listCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 200, height: 200)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        let lcv = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        lcv.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: "ListCell")
        lcv.backgroundColor = .white
        return lcv
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
        backgroundColor = .blue
        setConstraints()
        setButtonConstrains()
    }
    func setConstraints() {
        self.addSubview(listCollectionView)
        listCollectionView.translatesAutoresizingMaskIntoConstraints = false
//        listCollectionView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: -11).isActive = true
        listCollectionView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.5).isActive = true
        listCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        listCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8).isActive = true
        listCollectionView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
}
    
    func setButtonConstrains() {
        addSubview(createListButton)
        createListButton.translatesAutoresizingMaskIntoConstraints = false
        createListButton.bottomAnchor.constraint(equalTo: listCollectionView.topAnchor, constant: -120).isActive = true
        createListButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        createListButton.widthAnchor.constraint(equalTo: listCollectionView.widthAnchor, multiplier: 0.7).isActive = true
        createListButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }

}
