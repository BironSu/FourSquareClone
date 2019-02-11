//
//  SavedViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/11/19.
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
