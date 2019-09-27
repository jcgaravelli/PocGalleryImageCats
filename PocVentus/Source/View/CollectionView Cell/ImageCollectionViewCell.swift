//
//  CollectionViewCell.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCell: UIImageView! {
        didSet{
            self.imageCell.layer.cornerRadius = 10
        }
    }
    
    override func layoutIfNeeded() {
        self.layoutIfNeeded()
    }
}
