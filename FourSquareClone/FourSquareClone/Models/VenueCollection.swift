//
//  VenueCollection.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/12/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct Response: Codable {
    let response: Places
}

struct Places: Codable {
    let venues: [Venues]
}
struct Venues: Codable {
    let id: String
    let name: String
    let location: Address
    let categories: [Categories]
}

struct Address: Codable {
    let address: String
    let crossStreet: String
    let lat: Double
    let lng: Double
    let distance: Int
    let postalCode: String
    let cc: String
    let city: String
    let state: String
    let country: String
}
struct Categories: Codable {
    let name: String
    let pluralName: String
    let shortName: String
}
