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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(historyView)
        historyView.delegate = self
        historyView.historyTableView.dataSource = self
        self.title = "History"
    }
    
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") else {return UITableViewCell()}
        return cell
    }
    
    
}

extension HistoryViewController: HistoryViewDelegate {
    func seguePressed() {
        print("idk")
    }
    
    
}
