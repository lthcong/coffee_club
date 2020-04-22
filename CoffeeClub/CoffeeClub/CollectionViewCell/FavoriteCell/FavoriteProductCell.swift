//
//  FavoriteProductCell.swift
//  CoffeeClub
//
//  Created by Cong La on 4/21/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class FavoriteProductCell: UICollectionViewCell {

    
    @IBOutlet weak var ivFavoriteImage: UIImageView!
    @IBOutlet weak var lbFavoriteName: UILabel!
    @IBOutlet weak var lbFavoriteDes: UILabel!
    
    var currentProduct: ProductItem = ProductItem()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 10
        self.ivFavoriteImage.layer.cornerRadius = 10
    }

}
