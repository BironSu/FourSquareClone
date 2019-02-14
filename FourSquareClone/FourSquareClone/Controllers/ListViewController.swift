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
<<<<<<< HEAD
    let createView = CreateView()
    let detailView = DetailView()
    override func viewDidLoad() {
        super.viewDidLoad()
        createView.dismissButton.addTarget(self, action: #selector(dismissFunc), for: .touchUpInside)
=======
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(listView)
        view.addSubview(savedView)
>>>>>>> e24b6565c8875f12bc531d0b21f5baceb61215c9
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
