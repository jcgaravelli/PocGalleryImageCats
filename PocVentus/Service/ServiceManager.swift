//
//  ServiceManager.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

import Alamofire

class ServiceManager {
    
    private let headers: HTTPHeaders = ["Authorization": "Client-ID 1ceddedc03a5d71"]
    
    func getGallery(searchText: String, completion: @escaping ([Gallery]?, Error?) -> Void) {
        
        let fullUrl = "https://api.imgur.com/3/gallery/search/?q=\(searchText)"
        
        AF.request(fullUrl, headers: headers).responseData { (response) in
            guard let data = response.data else { return }
            
            do {
                let decoder = JSONDecoder()
                let dataGallery = try decoder.decode(DataGallery.self, from: data)
                
                let itensWithImage = dataGallery.data.filter {
                    guard let count = $0.imagesCount, count > 0 else { return false }
                    return true
                }
                completion(itensWithImage, nil)

            } catch let error {
                print("Error", error)
                completion(nil, error)
            }
        }
    }
}
