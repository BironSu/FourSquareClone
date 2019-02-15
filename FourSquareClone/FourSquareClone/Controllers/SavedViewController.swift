//
//  SavedViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SavedViewController: UIViewController {

    let savedView = SavedView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(savedView)
    }

}
