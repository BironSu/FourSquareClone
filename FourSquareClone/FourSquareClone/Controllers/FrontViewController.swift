//
//  FrontViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    let frontView = FrontView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(frontView)
        buttonSetup()
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
            navigationController?.pushViewController(searchVC, animated: true)
        }
    }

}
