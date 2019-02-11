//
//  CreateViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/11/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    let createView = CreateView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(createView)
    }

}
