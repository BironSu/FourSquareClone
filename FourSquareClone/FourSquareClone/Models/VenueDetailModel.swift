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
<<<<<<< HEAD
<<<<<<< HEAD
=======
    let categories: [SingleCategory]
    let bestPhoto: SingleVenuePhotos?
>>>>>>> 6505f3b03f090540c44cbe996be71f7aa5f93a2b
    let location: LocationInformation?
    let categories: SingleCategory
    let photo: SingleVenuePhotos
    let hours: Hour
<<<<<<< HEAD
=======
    let categories: [SingleCategory]
    let bestPhoto: SingleVenuePhotos?
>>>>>>> feadbc6bfe5d8cdad51d2bab4ba65482093a6bec
=======

>>>>>>> 6505f3b03f090540c44cbe996be71f7aa5f93a2b
}

struct LocationInformation: Codable {
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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 6505f3b03f090540c44cbe996be71f7aa5f93a2b
    let prefix: String
    let suffix: String
}

struct PhotoGroup: Codable {
    let items: [PhotoItem]?
}

struct PhotoItem: Codable {
    let id: String
<<<<<<< HEAD
=======
>>>>>>> feadbc6bfe5d8cdad51d2bab4ba65482093a6bec
=======
>>>>>>> 6505f3b03f090540c44cbe996be71f7aa5f93a2b
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
