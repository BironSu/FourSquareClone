//
//  DetailView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit
import MapKit

class DetailView: UIView {
    lazy var bgImage: UIImageView = {
        let detailI = UIImageView()
        detailI.image = UIImage(named: "foursquare")
        return detailI
    }()
    
    
    
    lazy var detailImage: UIImageView = {
        let detailI = UIImageView()
        detailI.image = UIImage(named: "foursquarePH")
        return detailI
    }()
    
    lazy var titleLabel: UILabel = {
        let titleL = UILabel()
        titleL.text = "This is titleLabel Test"
        titleL.textAlignment = .center
        titleL.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        titleL.font = UIFont.boldSystemFont(ofSize: 20)
        titleL.layer.cornerRadius = 15.0
        titleL.layer.masksToBounds = true
        return titleL
    }()
    
    lazy var addressLabel: UILabel = {
        let addressL = UILabel()
        addressL.backgroundColor = .clear
        addressL.textColor = .white
        addressL.numberOfLines = 0
        addressL.text = "This is the Address Label\nTest"
        return addressL
    }()
    lazy var hoursLabel: UILabel = {
        let hoursL = UILabel()
        hoursL.backgroundColor = .clear
        hoursL.textColor = .white
        hoursL.numberOfLines = 0
        hoursL.text = "This is the Hours Label:\nline2\nline3\nline4\nline5\nline6\nline7"
        
        return hoursL
    }()
    lazy var categoryLabel: UILabel = {
        let categoryL = UILabel()
        categoryL.backgroundColor = .clear
        categoryL.textColor = .white
        categoryL.font = UIFont.boldSystemFont(ofSize: 18)
        categoryL.text = "This is the Category Label"
        return categoryL
    }()
    lazy var directionButton: UIButton = {
        let directionB = UIButton()
        directionB.backgroundColor = UIColor.init(r: 244, g: 66, b: 149)
        directionB.setTitle("Directions", for: .normal)
        directionB.titleLabel?.textColor = .white
        directionB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        directionB.layer.cornerRadius = 10.0
        return directionB
    }()
    lazy var favoriteButton: UIButton = {
        let favoriteB = UIButton()
        favoriteB.backgroundColor = UIColor.init(r: 244, g: 66, b: 149)
        favoriteB.setTitle("Favorite", for: .normal)
        favoriteB.titleLabel?.textColor = .white
       favoriteB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        favoriteB.layer.cornerRadius = 10.0
        return favoriteB
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
        setupDetailImage()
        setupTitleLabel()
        setupAddressLabel()
        //setupHoursLabel()
        setupCategoryLabel()
        setupDirectionButton()
        setupFavoriteButton()
    }
    
}

extension DetailView {
    private func setupbgImage() {
        addSubview(bgImage)
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        bgImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        bgImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    
    private func setupDetailImage() {
        addSubview(detailImage)
        detailImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 0),
            detailImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            detailImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            detailImage.heightAnchor.constraint(equalToConstant: 300)
            ])
    }
    private func setupTitleLabel() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleLabel.bottomAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: -10),
            titleLabel.heightAnchor.constraint(equalToConstant: 35)
            ])
    }
    private func setupAddressLabel() {
        addSubview(addressLabel)
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            addressLabel.heightAnchor.constraint(equalToConstant: 80),
            addressLabel.topAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: 20)
            ])
    }
    private func setupHoursLabel() {
        addSubview(hoursLabel)
        hoursLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hoursLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            hoursLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            hoursLabel.heightAnchor.constraint(equalToConstant: 150),
            hoursLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 20)
            ])
    }
    private func setupCategoryLabel() {
        addSubview(categoryLabel)
        categoryLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            categoryLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            categoryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            categoryLabel.heightAnchor.constraint(equalToConstant: 80),
            categoryLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 20)
            ])
    }
    private func setupDirectionButton() {
        addSubview(directionButton)
        directionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            directionButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            directionButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            directionButton.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 10),
            directionButton.heightAnchor.constraint(equalToConstant: 50),
            directionButton.widthAnchor.constraint(equalToConstant: 150)
            ])
    }
    private func setupFavoriteButton() {
        addSubview(favoriteButton)
        favoriteButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            favoriteButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            favoriteButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            favoriteButton.heightAnchor.constraint(equalToConstant: 50),
            favoriteButton.widthAnchor.constraint(equalToConstant: 150)
            ])
    }
}
