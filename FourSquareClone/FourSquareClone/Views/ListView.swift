//
//  ListView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListView: UIView {
    lazy var bgImage: UIImageView = {
        let image = UIImageView()
        let myimage = UIImage(named: "foursquare")
        image.image = myimage
        return image
    }()
   
    lazy var placesLabel: UILabel = {
        let titleL = UILabel()
        titleL.text = "Your places"
        titleL.textAlignment = .left
//        titleL.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        titleL.font = UIFont.boldSystemFont(ofSize: 15)
//        titleL.layer.cornerRadius = 15.0
//        titleL.layer.masksToBounds = true
        return titleL
    }()
    
    
    lazy var createListButton: UIButton = {
        let button = UIButton()
        button.setTitle("Create", for: .normal)
        button.backgroundColor = UIColor.init(r: 244, g: 66, b: 149)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.titleLabel?.textColor = .white
        button.isEnabled = true
        return button
    }()
    
    
    lazy var listCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 200, height: 200)
//        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        let lcv = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        lcv.register(ListCollectionViewCell.self, forCellWithReuseIdentifier: "ListCell")
        lcv.showsHorizontalScrollIndicator = true
        lcv.backgroundColor = .clear
        return lcv
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit(){
        setupbgImage()
        setConstraints()
        setButtonConstrains()
//        setupLabels()
    }
    
    private func setupbgImage() {
        addSubview(bgImage)
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        bgImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        bgImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        bgImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        bgImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
    }
    
    func setupLabels() {
        addSubview(placesLabel)
        placesLabel.translatesAutoresizingMaskIntoConstraints = false
        placesLabel.centerXAnchor.constraint(equalTo: createListButton.centerXAnchor).isActive = true
        placesLabel.topAnchor.constraint(equalTo: createListButton.bottomAnchor, constant: 10).isActive = true
        placesLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20)
        
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
