//
//  ListViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    let listView = ListView()
    let savedView = SavedView()
    let createView = CreateView()
    let detailView = DetailView()
    override func viewDidLoad() {
        super.viewDidLoad()
        createView.dismissButton.addTarget(self, action: #selector(dismissFunc), for: .touchUpInside)
    }
    @objc private func dismissFunc() {
        print("does this work")
        dismiss(animated: true, completion: nil)
    }

}
