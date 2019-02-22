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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    view.addSubview(tipsView)
    self.tipsView.tipsTableView.dataSource = self
    self.tipsView.tipsTableView.delegate = self
    }
}

extension TipsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tipCell", for: indexPath) as? TipTableViewCell else { return UITableViewCell() }
        cell.textLabel?.text = indexPath.row.description
        
        return cell
    }
}

extension TipsViewController: UITableViewDelegate {
    
}
