//
//  SearchViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    let searchView = SearchView()
    // search key holds the value of the button title sent from frontview VC
    var searchKey = ""
    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width - 130, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchView)
        setupNavButtons()
        searchView.searchTableView.delegate = self
        searchView.searchTableView.dataSource = self
        searchView.searchTableView.register(UITableViewCell.self, forCellReuseIdentifier: "SearchCell")
    }
    private func setupNavButtons() {
        let leftNavBarButton = UIBarButtonItem(customView: self.searchBar)
        let rightnavBarButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPressed))
        self.navigationItem.rightBarButtonItem = rightnavBarButton
        self.navigationItem.leftBarButtonItem = leftNavBarButton
    }
    
    @objc private func cancelPressed() {
        let frontViewVC = FrontViewController()
        navigationController?.pushViewController(frontViewVC, animated: true)
        dismiss(animated: true, completion: nil)
    }
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath)
        cell.textLabel?.text = indexPath.row.description
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        print(indexPath.row)
        navigationController?.pushViewController(vc, animated: true)
    }
}
