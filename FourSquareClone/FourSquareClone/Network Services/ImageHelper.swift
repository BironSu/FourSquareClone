//
//  ImageHelper.swift
//  FourSquareClone
//
//  Created by Biron Su on 2/8/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

final class ImageHelper {
    private init() {}
    
    private static var cache = NSCache<NSString, UIImage>()
    
    static func fetchImageFromNetwork(urlString: String, completion: @escaping (AppError?, UIImage?) -> Void) {
        NetworkHelper.shared.performDataTask(endpointURLString: urlString) { (appError, data ) in
            if let appError = appError {
                completion(appError, nil)
            } else if let data = data {
                DispatchQueue.global().async {
                    if let image = UIImage(data: data) {
                        cache.setObject(image, forKey: urlString as NSString)
                        DispatchQueue.main.async {
                            completion(nil, image)
                        }
                    }
                }
            }
        }
    }
    
    static func fetchImageFromCache(urlString: String) -> UIImage? {
        return cache.object(forKey: urlString as NSString)
    }
}


