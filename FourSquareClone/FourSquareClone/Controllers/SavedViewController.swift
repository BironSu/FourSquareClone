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
        savedView.savedTableView.dataSource = self
        savedView.savedTableView.delegate = self
        savedView.savedTableView.register(UITableViewCell.self, forCellReuseIdentifier: "SavedCell")
    }

}
extension SavedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SavedCell", for: indexPath)
        cell.textLabel?.text = indexPath.row.description
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        print(indexPath.row.description)
        vc.modalPresentationStyle = .overCurrentContext
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
