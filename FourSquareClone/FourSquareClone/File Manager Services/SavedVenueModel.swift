//
//  SavedVenueModel.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//


//id, name, 
//id, name,
import Foundation
import UIKit

final class SavedVenueModel {
    private init(){}
    
    private static let venueFilename = "FourSquareClone.plist"
    private static let folderFilename = "FolderVenue.plist"
    public static var lists = [SavedList]() 
    private static var venueFolders = [VenueFolder]()
    
    static func saveFolder(venue: VenueFolder) -> (success: Bool, error: Error?) {
        var collectionVenues = getVenueFolders()
        collectionVenues.append(venue)
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: folderFilename)
        do {
            let data = try PropertyListEncoder().encode(venue)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
        }
        return (true, nil)
    }
    
    static func getVenueFolders() -> [VenueFolder] {
        var folders = [VenueFolder]()
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: folderFilename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                  let addedFolders = try PropertyListDecoder().decode(VenueFolder.self, from: data)
                    folders.append(addedFolders)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(venueFilename) does not exist")
        }
        return folders
            }
    
    
    
    
    static func getLists() -> [SavedList] {
        var newVenues = [SavedList]()
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: venueFilename).path
        print(path)
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                  let newlists = try PropertyListDecoder().decode(SavedList.self, from: data)
              newVenues.append(newlists)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(venueFilename) does not exist")
        }
        return newVenues
    }
    
    static func addList(list: SavedList) {
        lists.append(list)
    }
    
    static func delete(list: SavedList, atIndex index: Int) {
        lists.remove(at: index)
        
    }
    
    static func saveVenue(venue: SavedList) -> (success: Bool, error: Error?) {
        var venues = getLists()
        venues.append(venue)
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: venueFilename)
        do {
            let data = try PropertyListEncoder().encode(venue)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
        }
        return (true,nil)
    }
    
    static func updateList(updatedList: SavedList, atIndex index: Int) {
        lists[index] = updatedList
        
    }
}
