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

    lazy var myMap: MapView = {
        let map = MapView()
        return map
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(myMap)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        myMap.translatesAutoresizingMaskIntoConstraints = false
        myMap.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        myMap.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        myMap.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        myMap.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
}
