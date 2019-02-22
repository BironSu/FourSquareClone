//
//  TipID.swift
//  FourSquareClone
//
//  Created by Oniel Rosario on 2/21/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation


struct TipID: Codable {
    let response: ResponseID
}
struct ResponseID: Codable {
    let tip: Tip
}

struct Tip: Codable {
    let id: String
    let text: String
}
