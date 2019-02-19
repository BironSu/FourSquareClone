//
//  CreateViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    let createView = CreateView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(createView)
        createView.createButton.addTarget(self, action: #selector(createFunc), for: .touchUpInside)
        createView.dismissButton.addTarget(self, action: #selector(dismissFunc), for: .touchUpInside)
    }
    // for background
    @objc private func dismissFunc() {
        dismiss(animated: true, completion: nil)
    }
    // adds to collection list
    @objc private func createFunc() {
        dismiss(animated: true, completion: nil)
    }
}
