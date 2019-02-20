//
//  VenueDetailModel.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation



struct VenueDetail: Codable {
    let response: ResponseVenue
}

struct ResponseVenue: Codable {
    let venue: SingleVenueInfo
}

struct SingleVenueInfo: Codable {
    let id: String
    let name: String
    let contact: Contact
    //location goes here
    let categories: [SingleCategory]
    let bestPhoto: SingleVenuePhotos?
}

struct Contact: Codable {
    let phone: String
    let formattedPhone: String
    
}

struct SingleCategory: Codable {
    let id: String
    let name: String
    let pluralName: String
    let shortName: String
}

struct SingleVenuePhotos: Codable {
    let prefix: String
    let suffix: String
}

struct TimeFrame: Codable {
    let days: String
    let open: [OpenTimes]
}

struct OpenTimes: Codable {
    let renderedTime: String
}
