//
//  GalleryViewController+UICollectionViewDataSource.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

import UIKit

//MARK: UICollectionViewDataSource
extension GalleryViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = galleryCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.layer.cornerRadius = 10
        
        //setup image in cell
        let image = galleryImages[indexPath.row]
        
        if let linkUrl = image.images?.first?.link {
            let url = URL(string: linkUrl)
            cell.imageCell.kf.setImage(with: url, placeholder: UIImage(named: "logo_venturus"))
        }
        return cell
    }
}
