//
//  CollectionViewCell.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {
    lazy var folderImage: UIImageView = {
        let image = UIImageView()
        let myimage = UIImage(named: "fsFolderImage")
        image.image = myimage
        layer.cornerRadius = 10
        return image
    }()
    
    lazy var titleLabel: UILabel = {
        let titleL = UILabel()
        titleL.text = "This is titleLabel Test"
        titleL.textAlignment = .center
        titleL.textColor = .black
        titleL.font = UIFont.boldSystemFont(ofSize: 20)
        return titleL
    }()
    
    lazy var descriptionLabel: UILabel = {
        let titleL = UILabel()
        titleL.text = "This is titleLabel Test"
        titleL.textAlignment = .center
        titleL.textColor = .black
        titleL.font = UIFont.boldSystemFont(ofSize: 20)
        return titleL
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        layer.cornerRadius = 10
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
    
    func commonInit() {
        addSubview(folderImage)
        folderImage.translatesAutoresizingMaskIntoConstraints = false
        folderImage.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.9).isActive = true
        folderImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.9).isActive = true
        folderImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        folderImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -20).isActive = true
        addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
    }
}
