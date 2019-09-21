//
//  GalleryViewController+Request.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

import UIKit

extension GalleryViewController {
    
    //MARK: Parse Object
    func parseGallery() {
        ServiceManager().getGallery(searchText: "cats") { (gallery, error) in
            guard let gallery = gallery else {
                print(error)
                return
            }
            self.galleryImages = gallery
        }
    }
}
