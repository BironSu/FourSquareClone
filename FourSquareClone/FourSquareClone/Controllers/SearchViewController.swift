//
//  SearchViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    var buttonSearch = true
    var tihs = [CatResult]() {
        didSet {
            DispatchQueue.main.async {
                self.searchView.searchTableView.reloadData()
            }
        }
    }
    var searchQueryData = [CatQuery]() {
        didSet {
            DispatchQueue.main.async {
                self.searchView.searchTableView.reloadData()
                
            }
        }
    }
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
        getList()
    }
    
    private func getList() {
        switch searchKey {
        case "Breakfast":
            searchKey = "4bf58dd8d48988d143941735"
        case "Lunch":
            searchKey = "4d4b7105d754a06374d81259"
        case "Diner":
            searchKey = "4bf58dd8d48988d147941735"
        case "Coffee":
            searchKey = "4bf58dd8d48988d1e0931735"
        case "Night Life":
            searchKey = "4d4b7105d754a06376d81259"
        case  "Events":
            searchKey = "4d4b7105d754a06373d81259"
        default:
            searchKey = "4d4b7105d754a06378d81259"
        }
        APIClient.getVenuesByCategory(categoryID: searchKey, lat: 40.69779079038551, lon: -73.9916819489333) { (cat, error) in
            if let cat = cat?.response.group.results {
                self.tihs = cat
            }
            if let error = error {
                print(error)
            }
        }
    }
    
    private func setupNavButtons() {
        self.searchBar.delegate = self
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
        if buttonSearch {
            return tihs.count
        } else {
            return searchQueryData.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath)
        if buttonSearch {
            let cellToSet = tihs[indexPath.row]
            cell.textLabel?.text = cellToSet.venue.name
        } else {
            let cellToSet = searchQueryData[indexPath.row]
            cell.textLabel?.text = cellToSet.name
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        if buttonSearch {
            vc.cat = tihs[indexPath.row]
        } else {
            vc.query = searchQueryData[indexPath.row]
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension SearchViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let searchText = searchBar.text {
            APIClient.getVenuesByQuery(keyword: searchText, lat: 40.69779079038551, lon: -73.9916819489333) { (cat, error) in
                if let error = error {
                    print(error)
                } else if let cat = cat?.response.venues {
                    self.buttonSearch = false
                    self.searchQueryData = cat
                }
            }
        }
    }
}
