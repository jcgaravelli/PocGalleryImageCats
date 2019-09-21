//
//  Image.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

struct Image: Decodable {
    var link: String
    
    enum CodingKeys: String, CodingKey {
        case link = "link"
    }
}
