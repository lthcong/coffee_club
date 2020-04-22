//
//  MenuCollectionCell.swift
//  CoffeeClub
//
//  Created by Cong La on 4/15/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class MenuCollectionCell: UICollectionViewCell {

    
    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var ivMenuItemImage: UIImageView!
    @IBOutlet weak var lbMenuItemName: UILabel!
    @IBOutlet weak var lbMenuItemDescription: UILabel!
    
    var currentMenuItem: MenuItem = MenuItem()
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
        self.vMainView.layer.cornerRadius = 15
        self.ivMenuItemImage.layer.cornerRadius = 15
    }

}
