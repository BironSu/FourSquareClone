//
//  tips.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {
    let tipsView = TipsView()
    var tipsList = [Tip]() {
        didSet {
            DispatchQueue.main.async {
                self.tipsView.tipsTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    view.addSubview(tipsView)
    self.tipsView.tipsTableView.dataSource = self
    self.tipsView.tipsTableView.delegate = self
    }
}

extension TipsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tipCell", for: indexPath) as? TipTableViewCell else { return UITableViewCell() }
        let tip = tipsList[indexPath.row]
        cell.textLabel?.numberOfLines = 6
        cell.textLabel?.text = tip.text
        return cell
    }
}

extension TipsViewController: UITableViewDelegate {
    
}
