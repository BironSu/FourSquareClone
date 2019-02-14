//
//  DetailView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class DetailView: UIView {

<<<<<<< HEAD
    lazy var detailImage: UIImageView = {
        let detailI = UIImageView()
        detailI.backgroundColor = .lightGray
        return detailI
    }()
    lazy var titleLabel: UILabel = {
       let titleL = UILabel()
        titleL.text = "This is titleLabel Test"
        titleL.textAlignment = .center
        titleL.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        titleL.layer.cornerRadius = 15.0
        titleL.layer.masksToBounds = true
        return titleL
    }()

    lazy var addressLabel: UILabel = {
        let addressL = UILabel()
        addressL.backgroundColor = .lightGray
        addressL.numberOfLines = 0
        addressL.text = "This is the Address Label\nTest"
        return addressL
    }()
    lazy var hoursLabel: UILabel = {
        let hoursL = UILabel()
        hoursL.backgroundColor = .lightGray
        hoursL.numberOfLines = 0
        hoursL.text = "This is the Hours Label\nline2\nline3\nline4\nline5\nline6\nline7"

        return hoursL
    }()
    lazy var categoryLabel: UILabel = {
        let categoryL = UILabel()
        categoryL.backgroundColor = .lightGray
        categoryL.text = "This is the Category Label"
        return categoryL
    }()
    lazy var directionButton: UIButton = {
        let directionB = UIButton()
        directionB.backgroundColor = .lightGray
        directionB.setTitle("Directions", for: .normal)
        directionB.layer.cornerRadius = 10.0
        directionB.layer.borderWidth = 1.0
        return directionB
    }()
    lazy var favoriteButton: UIButton = {
       let favoriteB = UIButton()
        favoriteB.backgroundColor = .lightGray
        favoriteB.setTitle("Favorite", for: .normal)
        favoriteB.layer.cornerRadius = 10.0
        favoriteB.layer.borderWidth = 1.0
        return favoriteB
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = UIColor.lightText
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        fatalError("init(coder:) failed to implement")
    }
    private func commonInit(){
        setupDetailImage()
        setupTitleLabel()
        setupAddressLabel()
        setupHoursLabel()
        setupCategoryLabel()
        setupDirectionButton()
        setupFavoriteButton()
    }
=======
    
>>>>>>> e24b6565c8875f12bc531d0b21f5baceb61215c9

}

extension DetailView {
    private func setupDetailImage() {
        addSubview(detailImage)
        detailImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            detailImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 0),
            detailImage.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            detailImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 0),
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
            categoryLabel.heightAnchor.constraint(equalToConstant: 40),
            categoryLabel.topAnchor.constraint(equalTo: hoursLabel.bottomAnchor, constant: 20)
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
