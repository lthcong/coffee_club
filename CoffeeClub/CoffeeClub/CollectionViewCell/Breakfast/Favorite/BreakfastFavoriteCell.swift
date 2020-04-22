//
//  BreakfastFavoriteCell.swift
//  CoffeeClub
//
//  Created by Cong La on 4/17/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class BreakfastFavoriteCell: UICollectionViewCell {

    
    @IBOutlet weak var ivFavoriteImage: UIImageView!
    @IBOutlet weak var lbFavoriteName: UILabel!
    @IBOutlet weak var lbFavoriteDescription: UILabel!
    @IBOutlet weak var lbFavoritePrice: UILabel!
    
    var currentProduct: ProductItem = ProductItem()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.ivFavoriteImage.layer.cornerRadius = 10
        self.layer.cornerRadius = 10
    }

}
