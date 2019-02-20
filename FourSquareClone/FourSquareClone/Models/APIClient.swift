//
//  APIClient.swift
//  FourSquareClone
//
//  Created by Nathalie  on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

//https://api.foursquare.com/v2/venues/(VenueID)?ll=(Long,Lat)&client_id=(ClientID)&client_secret=(ClientSecret)&v=(FormatDateYYYYMMDD)

final class APIClient {
    static func getVenuesByCategory(categoryID: String, lat: Double, lon: Double, completionHandler: @escaping ((CatCategory?, AppError?) -> Void)) {
        let date = Date.getISOTimestamp().formatISODateString(dateFormat: "yyyyMMdd")
        
        guard let url = URL.init(string: "https://api.foursquare.com/v2/search/recommendations?ll=\(lat),\(lon)&client_id=\(APIKey.key)&client_secret=\(APIKey.secretKey)&v=\(date)&categories=\(categoryID)") else { completionHandler(nil, .badURL("url not working"))
            return }
        let urlRequest = URLRequest.init(url: url)
        print(url)
        URLSession.shared.dataTask(with: urlRequest) {(data, response, error) in
            if let error = error {
                completionHandler(nil, .badStatusCode(error as! String))
            }
            
            if let data = data {
                do {
                    let catData = try JSONDecoder().decode(CatCategory.self, from: data)
                    completionHandler(catData, nil)
                } catch {
                    completionHandler(nil, .jsonDecodingError(error))
                }
            }
            }.resume()
    }
    
    
    
}



