//
//  FrontView.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FrontView: UIView {
    lazy var bgImage: UIImageView = {
        let image = UIImageView()
        let myimage = UIImage(named: "foursquare")
        image.image = myimage
        return image
    }()
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView()
        let myimage = UIImage(named: "foursquarelogo")
        image.image = myimage
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    
    lazy var mainSearchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search for event..."
        searchBar.backgroundImage = UIImage()
        searchBar.backgroundColor = .clear
        //        searchBar.layer.borderWidth = 1
        
        return searchBar
    }()
    
    lazy var bfButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "breakfast"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        var color = UIColor()
        color = .white
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var lunchButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "lunch"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        var color = UIColor()
        color = .white
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var dinerButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "diner"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        var color = UIColor()
        color = .white
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var coffeeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "coffee"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        var color = UIColor()
        color = .white
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var nlButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "nightLife"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        var color = UIColor()
        color = .white
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 1
        return button
    }()
    
    lazy var toDoButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "event"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        var color = UIColor()
        color = .white
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = 1
        return button
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
        setBGImage()
        setlogoImage()
        constrainSearchBar()
        setButtons()
    }
    
    
    func setBGImage() {
        addSubview(bgImage)
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        bgImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        bgImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        bgImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        bgImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setlogoImage() {
        addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.centerXAnchor.constraint(equalTo: bgImage.centerXAnchor).isActive = true
        logoImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        logoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
        logoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -11).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
    func constrainSearchBar() {
        addSubview(mainSearchBar)
        mainSearchBar.translatesAutoresizingMaskIntoConstraints = false
        mainSearchBar.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 60).isActive = true
        mainSearchBar.centerXAnchor.constraint(equalTo: logoImage.centerXAnchor).isActive = true
        mainSearchBar.widthAnchor.constraint(equalTo: logoImage.widthAnchor).isActive = true
    }
    func setButtons() {
        //bf button
        addSubview(bfButton)
        bfButton.translatesAutoresizingMaskIntoConstraints = false
        bfButton.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 100).isActive = true
        bfButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        bfButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        bfButton.leadingAnchor.constraint(equalTo: mainSearchBar.leadingAnchor).isActive = true
        
        //lunch button
        addSubview(lunchButton)
        lunchButton.translatesAutoresizingMaskIntoConstraints = false
        lunchButton.heightAnchor.constraint(equalTo: bfButton.heightAnchor).isActive = true
        lunchButton.widthAnchor.constraint(equalTo: bfButton.widthAnchor).isActive = true
        lunchButton.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 100).isActive = true
        lunchButton.leadingAnchor.constraint(equalTo: bfButton.trailingAnchor, constant: 5).isActive = true
        
        
        //diner button
        addSubview(dinerButton)
        dinerButton.translatesAutoresizingMaskIntoConstraints = false
        dinerButton.heightAnchor.constraint(equalTo: bfButton.heightAnchor).isActive = true
        dinerButton.widthAnchor.constraint(equalTo: bfButton.widthAnchor).isActive = true
        dinerButton.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 100).isActive = true
        dinerButton.trailingAnchor.constraint(equalTo: mainSearchBar.trailingAnchor).isActive = true
        
        dinerButton.leadingAnchor.constraint(equalTo: lunchButton.trailingAnchor, constant: 5).isActive = true
        
        
        //coffee button
        addSubview(coffeeButton)
        coffeeButton.translatesAutoresizingMaskIntoConstraints = false
        coffeeButton.heightAnchor.constraint(equalTo: bfButton.heightAnchor).isActive = true
        coffeeButton.widthAnchor.constraint(equalTo: bfButton.widthAnchor).isActive = true
        coffeeButton.topAnchor.constraint(equalTo: bfButton.bottomAnchor, constant: 20).isActive = true
        coffeeButton.leadingAnchor.constraint(equalTo: mainSearchBar.leadingAnchor).isActive = true
        coffeeButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        
        
        //nightlife button
        addSubview(nlButton)
        nlButton.translatesAutoresizingMaskIntoConstraints = false
        nlButton.heightAnchor.constraint(equalTo: bfButton.heightAnchor).isActive = true
        nlButton.widthAnchor.constraint(equalTo: bfButton.widthAnchor).isActive = true
        nlButton.topAnchor.constraint(equalTo: lunchButton.bottomAnchor, constant: 20).isActive = true
        nlButton.leadingAnchor.constraint(equalTo: coffeeButton.trailingAnchor, constant: 5).isActive = true
        nlButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        
        //to do button
        addSubview(toDoButton)
        toDoButton.translatesAutoresizingMaskIntoConstraints = false
        toDoButton.heightAnchor.constraint(equalTo: bfButton.heightAnchor).isActive = true
        toDoButton.widthAnchor.constraint(equalTo: bfButton.widthAnchor).isActive = true
        toDoButton.topAnchor.constraint(equalTo: dinerButton.bottomAnchor, constant: 20).isActive = true
        toDoButton.trailingAnchor.constraint(equalTo: mainSearchBar.trailingAnchor).isActive = true
        toDoButton.leadingAnchor.constraint(equalTo: nlButton.trailingAnchor, constant: 5).isActive = true
        toDoButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
    }
}
