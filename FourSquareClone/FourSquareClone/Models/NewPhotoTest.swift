//
//  NewPhotoTest.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/21/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct NewPhotoTest: Codable {
    let response: PhotoResponse
}

struct PhotoResponse: Codable {
    let photo: PhotoInfoTest
}

struct PhotoInfoTest: Codable {
    let prefix: String
    let suffix: String
}
