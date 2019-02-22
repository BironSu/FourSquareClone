//
//  HistoryViewController.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    let historyView = HistoryView()
    
    var savedList = [SavedList]() {
        didSet {
            DispatchQueue.main.async {
                self.historyView.historyTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(historyView)
        historyView.historyTableView.dataSource = self
        historyView.historyTableView.delegate = self
        self.title = "History"
        savedList = SavedVenueModel.getLists()
    }
    
}

extension HistoryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") else {return UITableViewCell()}
        cell.textLabel?.text = savedList[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.venueName = savedList[indexPath.row].id
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
