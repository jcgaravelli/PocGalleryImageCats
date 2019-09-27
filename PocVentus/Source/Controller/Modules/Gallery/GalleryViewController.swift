//
//  GalleryViewController.swift
//  PocVentus
//
//  Created by Julio Garavelli on 21/09/19.
//  Copyright © 2019 Julio Garavelli. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class GalleryViewController: UIViewController {
    
    @IBOutlet weak var galleryCollectionView: UICollectionView!
    
    var galleryImages: [Gallery] = [] {
        didSet {
            self.galleryCollectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupCollection()
        parseGallery()
    }
    
    func setupCollection() {
        galleryCollectionView.delegate = self
        galleryCollectionView.dataSource = self
        
        let nibName = UINib(nibName: "ImageCollectionViewCell", bundle:nil)
        galleryCollectionView.register(nibName, forCellWithReuseIdentifier: "cell")
    }
}
