//
//  SavedViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SavedViewController: UIViewController {
    var savedVenues = [SavedList]() {
        didSet {
            savedView.savedTableView.reloadData()
        }
    }
    let savedView = SavedView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(savedView)
        savedView.savedTableView.dataSource = self
        savedView.savedTableView.delegate = self
        savedView.savedTableView.register(UITableViewCell.self, forCellReuseIdentifier: "SavedCell")
        self.savedVenues = SavedVenueModel.getLists()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.savedVenues = SavedVenueModel.getLists()
    }

}
extension SavedViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if savedVenues.count > 0 {
            return savedVenues.count
        } else {
            return 2
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SavedCell", for: indexPath)
        guard savedVenues.count > 0 else { return UITableViewCell() }
     let venue = savedVenues[indexPath.row]
        cell.textLabel?.text = venue.name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        print(indexPath.row.description)
        vc.modalPresentationStyle = .overCurrentContext
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
