//
//  CollectionListController.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/14/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class CollectionListController: UIViewController {
    let detail = DetailViewController()
    let collectionListView = CollectionListView()
    var folderName: String!
     var venue: String!
     var id: String!
    var savedFolders = [VenueFolder]() {
        didSet {
            collectionListView.collectionListTableView.reloadData()
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionListView)
        detail.delegate = self
        collectionListView.collectionListTableView.delegate = self
        collectionListView.collectionListTableView.dataSource = self
        collectionListView.createButton.addTarget(self, action: #selector(createListSave), for: .touchUpInside)
        self.savedFolders = SavedVenueModel.getVenueFolders()
    }
    
    
    
    @objc private func createListSave() {
       
        guard !folderName.isEmpty else {
            showAlert(title: "", message: "Select a collection to save", actionTitle: "OK")
            return
        }
        let newVenue = SavedList.init(name: venue, id: id, folderName: folderName)
        let newSavedVenue = SavedVenueModel.saveVenue(venue: newVenue)
        if let error = newSavedVenue.error {
            showAlert(title: "error", message: "could not save new venue: \(error)", actionTitle: "OK")
        } else {
            showAlert(title: "", message: "New venue saved!", actionTitle: "OK")
        }
        dismiss(animated: true, completion: nil)
    }
}
extension CollectionListController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let folder = savedFolders[indexPath.row]
        self.folderName = folder.title
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension CollectionListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if savedFolders.count > 0 {
            return savedFolders.count
        } else  {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionCell") as? CollectionListTableViewCell else { return UITableViewCell() }
      let folder = savedFolders[indexPath.row]
        cell.textLabel?.text = folder.title
        return cell
    }
    
    
}

extension CollectionListController: DetailFavoriteSavedDelegate {
    func addToFavorites(venueName: String, venueID: String) {
        self.venue = venueName
        self.id = venueID
    }
}
