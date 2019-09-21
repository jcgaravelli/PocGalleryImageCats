//
//  Gallery.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

struct Gallery: Decodable {
    var title: String?
    var images: [Image]?
    var imagesCount: Int?
    
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case images = "images"
        case imagesCount = "images_count"
    }
}

