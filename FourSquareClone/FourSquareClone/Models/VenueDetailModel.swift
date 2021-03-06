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
    let location: LocationInformation
    let categories: [SingleCategory]
    let photos: SingleVenuePhotos
//   let bestPhoto: SingleVenuePhotos
}



struct LocationInformation: Codable {
    let address: String?
    let crossStreet: String?
    let lat: Double
    let lng: Double
    let distance: Int
    let postalCode: String?
    let cc: String
    let city: String
    let state: String
    let country: String
    let formattedAddress: [String]
}



struct Contact: Codable {
    let phone: String?
    let formattedPhone: String?
    
}

struct SingleCategory: Codable {
    let id: String
    let name: String
    let pluralName: String
    let shortName: String
}

struct SingleVenuePhotos: Codable {
    let prefix: String?
    let suffix: String?
    let groups: [PhotoGroup]
}

struct PhotoGroup: Codable {
    let items: [PhotoItem]
}

struct PhotoItem: Codable {
    let id: String
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
