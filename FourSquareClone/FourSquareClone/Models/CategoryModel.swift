//
//  CategoryModel.swift
//  FourSquareClone
//
//  Created by Nathalie  on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct CatCategory: Codable {
    let response: CatResponse
}

struct CatResponse: Codable {
    let group: CatGroup
}

struct CatGroup: Codable {
    let results: [CatResult]
}

struct CatResult: Codable {
    let venue: CatVenueInfo
}
struct CatVenueInfo: Codable {
    let id: String
    let name: String
}
