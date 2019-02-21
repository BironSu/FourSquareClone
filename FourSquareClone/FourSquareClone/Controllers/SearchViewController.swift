//
//  SearchViewController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit
import MapKit

class SearchViewController: UIViewController {
    var buttonSearch: Bool!
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
    var singleVenueToSend: SingleVenueInfo!
    let searchView = SearchView()
    // search key holds the value of the button title sent from frontview VC
    var searchKey = ""
    lazy var searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width - 130, height: 20))
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchView)
        searchView.searchTableView.delegate = self
        searchView.searchTableView.dataSource = self
        searchBar.delegate = self
        searchView.searchTableView.register(UITableViewCell.self, forCellReuseIdentifier: "SearchCell")
        setupNavButtons()
        if buttonSearch {
        getQueryList()
        } else {
         getList()
        }
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
            DispatchQueue.main.async {
            if let cat = cat {
               self.tihs = cat.response.group.results
            }
            else if let error = error {
                print(error)
            }
            }
        }
    }
    private func getQueryList() {
        let query = searchKey
        APIClient.getVenuesByQuery(keyword: query, lat: 40.69779079038551, lon: -73.9916819489333) { (query, error) in
            if let error = error {
                print(error)
            } else if let query = query {
                self.searchQueryData = query.response.venues
            }
        }
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
        if buttonSearch {
            return searchQueryData.count
        } else {
        return tihs.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath)
        if buttonSearch {
            let cellToSet = searchQueryData[indexPath.row]
            cell.textLabel?.text = cellToSet.name
        } else {
            let cellToSet = tihs[indexPath.row]
            cell.textLabel?.text = cellToSet.venue.name
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        if buttonSearch {
            let venue = searchQueryData[indexPath.row]
            vc.venueName = venue.id
            vc.lat = venue.location.lat
            vc.long = venue.location.lng
        } else {
            let venue = tihs[indexPath.row]
            vc.venueName = venue.venue.id
            vc.lat = venue.venue.location.lat
            vc.long = venue.venue.location.lng
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
