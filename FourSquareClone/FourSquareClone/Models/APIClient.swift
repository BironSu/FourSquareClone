//
//  APIClient.swift
//  FourSquareClone
//
//  Created by Nathalie  on 2/19/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

//https://api.foursquare.com/v2/venues/(VenueID)?ll=(Long,Lat)&client_id=(ClientID)&client_secret=(ClientSecret)&v=(FormatDateYYYYMMDD)
//https://api.foursquare.com/v2/venues/5786940a498e6585825265f9?ll=40.69779079038551,-73.9916819489333&client_id=NLD0T2XLI3UPE2A2IAD02PNWUKJ24COCJOD0M3MHFPMW0WWU&client_secret=I5FIJVSGIPQMFMV4KOKJXRK0I1DAYLNBYJY4IPM22UGVSG5Y&v=20190220
final class APIClient {
    static func getVenuesByCategory(categoryID: String, lat: Double, lon: Double, completionHandler: @escaping((CatCategory?, AppError?) -> Void)) {
        let date = Date.getISOTimestamp().formatISODateString(dateFormat: "yyyyMMdd")
        print(date)
        guard let url = URL.init(string: "https://api.foursquare.com/v2/search/recommendations?ll=\(lat),\(lon)&client_id=\(APIKey.key)&client_secret=\(APIKey.secretKey)&v=\(date)&categories=\(categoryID)") else { completionHandler(nil, .badURL("url not working"))
            return }
        URLSession.shared.dataTask(with: url) { (categories, response, error) in
            DispatchQueue.main.async {
                
            
            if let error = error {
                print(error)
                completionHandler(nil, AppError.badURL("error with the url:\(error)"))
            }
           else if let categories = categories {
                do {
                    let catData = try JSONDecoder().decode(CatCategory.self, from: categories)
                    //dump(catData)
                    completionHandler(catData, nil)
                } catch {
                    completionHandler(nil, .jsonDecodingError(error))
                }
            }
            }
        }.resume()
    }
    static func getVenuesByQuery(keyword: String, lat: Double, lon: Double, completionHandler: @escaping ((QueryCat?, AppError?) -> Void)) {
        let date = Date.getISOTimestamp().formatISODateString(dateFormat: "yyyyMMdd")
        
        guard let url = URL.init(string: "https://api.foursquare.com/v2/venues/search?ll=\(lat),\(lon)&client_id=\(APIKey.key)&client_secret=\(APIKey.secretKey)&v=\(date)&query=\(keyword)") else { completionHandler(nil, .badURL("url not working"))
            return }
        print(url)
        let urlRequest = URLRequest.init(url: url)
        URLSession.shared.dataTask(with: urlRequest) {(data, response, error) in
            if let error = error {
                completionHandler(nil, .badStatusCode(error as! String))
            }
            if let data = data {
                do {
                    let catData = try JSONDecoder().decode(QueryCat.self, from: data)
                    completionHandler(catData, nil)
                } catch {
                    completionHandler(nil, .jsonDecodingError(error))
                }
            }
        }.resume()
    }
    static func getVenueDetail(keyword: String, lat: Double, lon: Double, completionHandler: @escaping ((VenueDetail?, AppError?) -> Void)) {
        let date = Date.getISOTimestamp().formatISODateString(dateFormat: "yyyyMMdd")
        let thing = "https://api.foursquare.com/v2/venues/\(keyword)?ll=\(lat),\(lon)&client_id=\(APIKey.key)&client_secret=\(APIKey.secretKey)&v=\(date)"
        guard let url = URL.init(string: "https://api.foursquare.com/v2/venues/\(keyword)?ll=\(lat),\(lon)&client_id=\(APIKey.key)&client_secret=\(APIKey.secretKey)&v=\(date)") else { completionHandler(nil, .badURL("url not working"))
            return }
        print(url)
        let urlRequest = URLRequest.init(url: url)
        URLSession.shared.dataTask(with: urlRequest) {(data, response, error) in
            if let error = error {
                completionHandler(nil, .badStatusCode(error as! String))
            }
            if let data = data {
                do {
                    let catData = try JSONDecoder().decode(VenueDetail.self, from: data)
                    completionHandler(catData, nil)
                } catch {
                    completionHandler(nil, .jsonDecodingError(error))
                }
            }
        }.resume()
    }
    
    
    
}



