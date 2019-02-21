//
//  NearByModel.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation


struct NearbyInfo: Codable {
    let response: VenueInfo
}

struct VenueInfo: Codable {
    let venues: [Venue]
}

struct Venue: Codable {
    let id: String
    let name: String
    let location: Location
    let categories: [Category]
}

struct Location: Codable {
    let address: String
    let crossStreet: String
    let lat: Double
    let lng: Double
    let distance: Int
    let neighborhood: String
    let city: String
    let country: String
}


struct Category: Codable {
    let id: String
    let name: String
    let pluralName: String
    
}
