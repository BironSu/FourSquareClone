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
    
    func constrainSearchBar() {
        addSubview(mainSearchBar)
        mainSearchBar.translatesAutoresizingMaskIntoConstraints = false
        mainSearchBar.centerYAnchor.constraint(equalTo: bgImage.centerYAnchor, constant: -40).isActive = true
        mainSearchBar.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor, constant: 20).isActive = true
        mainSearchBar.trailingAnchor.constraint(equalTo: bgImage.trailingAnchor, constant: -20).isActive = true
    }
    
    func setBGImage() {
        addSubview(bgImage)
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        bgImage.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        bgImage.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    }
    func setButtons() {
        addSubview(bfButton)
        bfButton.translatesAutoresizingMaskIntoConstraints = false
        bfButton.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 20).isActive = true
        bfButton.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor, constant: 20).isActive = true
        bfButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        bfButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //lunch button
        addSubview(lunchButton)
        lunchButton.translatesAutoresizingMaskIntoConstraints = false
        lunchButton.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 20).isActive = true
        lunchButton.leadingAnchor.constraint(equalTo: bfButton.trailingAnchor, constant: 7).isActive = true
       lunchButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        lunchButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //diner button
        addSubview(dinerButton)
        dinerButton.translatesAutoresizingMaskIntoConstraints = false
        dinerButton.topAnchor.constraint(equalTo: mainSearchBar.bottomAnchor, constant: 20).isActive = true
        dinerButton.trailingAnchor.constraint(equalTo: bgImage.trailingAnchor, constant: -20).isActive = true
        dinerButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        dinerButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //coffee button
        addSubview(coffeeButton)
        coffeeButton.translatesAutoresizingMaskIntoConstraints = false
        coffeeButton.topAnchor.constraint(equalTo: bfButton.bottomAnchor, constant: 20).isActive = true
        coffeeButton.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor, constant: 20).isActive = true
        coffeeButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        coffeeButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //nightlife button
        addSubview(nlButton)
        nlButton.translatesAutoresizingMaskIntoConstraints = false
        nlButton.topAnchor.constraint(equalTo: lunchButton.bottomAnchor, constant: 20).isActive = true
        nlButton.leadingAnchor.constraint(equalTo: coffeeButton.trailingAnchor, constant: 7).isActive = true
        nlButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        nlButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        
        //to do button
        addSubview(toDoButton)
        toDoButton.translatesAutoresizingMaskIntoConstraints = false
        toDoButton.topAnchor.constraint(equalTo: dinerButton.bottomAnchor, constant: 20).isActive = true
        toDoButton.trailingAnchor.constraint(equalTo: bgImage.trailingAnchor, constant: -20).isActive = true
        toDoButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        toDoButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    func setlogoImage() {
        addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.centerXAnchor.constraint(equalTo: bgImage.centerXAnchor).isActive = true
        logoImage.topAnchor.constraint(equalTo: bgImage.topAnchor, constant: 30).isActive = true
        logoImage.leadingAnchor.constraint(equalTo: bgImage.leadingAnchor, constant: 11).isActive = true
        logoImage.trailingAnchor.constraint(equalTo: bgImage.trailingAnchor, constant: -11).isActive = true
       
    }
}
