//
//  SavedVenueModel.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//


//id, name, 
import Foundation
import UIKit

final class SavedVenueModel {
    private static let filename = "FourSquareClone.plist"
    private static var lists = [SavedList]()
    
    static func getLists() -> [SavedList] {
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                  lists = try PropertyListDecoder().decode([SavedList].self, from: data)
                } catch {
                    print("property list decoding error: \(error)")
                }
            } else {
                print("data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
        return lists
    }
    
    static func addList(list: SavedList){
        lists.append(list)
        save()
    }
    
    static func delete(list: SavedList, atIndex index: Int) {
        lists.remove(at: index)
        save()
    }
    
    static func save() {
        let path = DataPersistenceManager.filepathToDocumentsDirectory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(lists)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list encoding error: \(error)")
        }
    }
    
    static func updateList(updatedList: SavedList, atIndex index: Int) {
        lists[index] = updatedList
        save()
    }
}
