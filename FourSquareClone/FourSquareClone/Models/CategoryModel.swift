//
//  CategoryModel.swift
//  FourSquareClone
//
//  Created by Nathalie  on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct CatCategory: Codable {
    let response: CatResponse?
}

struct CatResponse: Codable {
    let group: CatGroup?
}

struct CatGroup: Codable {
    let results: [CatResult]?
}

struct CatResult: Codable {
    let venue: CatVenueInfo?
}

struct CatVenueInfo: Codable {
    let id: String
    let name: String
    let location: CatLocation?
    let categories: [CatCategories]
}

struct CatLocation: Codable {
    let address: String
    let crossStreet: String?
    let lat: Double
    let lng: Double
    let distance: Int
    let postalCode: String
    let cc: String
    let city: String
    let state: String
    let country: String
}

struct CatCategories: Codable {
    let id: String
    let name: String
}


