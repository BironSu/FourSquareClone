//
//  FrontViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit
import CoreLocation

class FrontViewController: UIViewController {
    let tipView = TipsView()
    let frontView = FrontView()
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(frontView)
        buttonSetup()
        locationSetup()
    }
    private func locationSetup() {
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            
            
        } else {
            locationManager.requestWhenInUseAuthorization()
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
            
        }
    }
    private func buttonSetup() {
        frontView.mainSearchButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)
        frontView.coffeeButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)
        frontView.dinerButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)
        frontView.lunchButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)
        frontView.nlButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)
        frontView.bfButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)
        frontView.toDoButton.addTarget(self, action: #selector(searchFunction(_:)), for: .touchUpInside)

    }
    @objc private func searchFunction(_ sender: UIButton){
        if let currentTitle = sender.currentTitle {
            let searchVC = SearchViewController()
            searchVC.searchKey = currentTitle
            searchVC.buttonSearch = true
            navigationController?.pushViewController(searchVC, animated: true)
        }
    }

}
