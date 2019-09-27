//
//  DataGallery.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

struct DataGallery: Decodable {
    var data: [Gallery]
    
    enum CodingKeys: String, CodingKey {
        case data = "data"
    }
}
