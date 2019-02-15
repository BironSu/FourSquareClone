//
//  Photo.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/15/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

//model for photos
struct PhotoModel: Codable {
    let response: Response
}
struct Response:Codable {
    let photos: Photo
}

struct Photo: Codable {
    let items: [Photoinfo]
}

struct Photoinfo: Codable {
    let id: String
    let prefix: String
    let suffix: String
}
