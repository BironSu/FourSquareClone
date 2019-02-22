//
//  QueryModel.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/20/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct QueryCat: Codable {
    let response: QueryResponse
}
struct QueryResponse: Codable {
    let venues: [CatQuery]
}
struct CatQuery: Codable {
    let id: String
    let name: String
    let location: QueryLocation
}

struct QueryLocation: Codable {
    let address: String?
    let crossStreet: String?
    let lat: Double
    let lng:Double
}
