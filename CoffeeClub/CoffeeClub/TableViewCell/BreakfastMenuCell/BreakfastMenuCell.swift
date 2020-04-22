//
//  BreakfastMenuCell.swift
//  CoffeeClub
//
//  Created by Cong La on 4/17/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class BreakfastMenuCell: UITableViewCell {

    
    @IBOutlet weak var ivBreakfastImage: UIImageView!
    @IBOutlet weak var lbBreakfastName: UILabel!
    @IBOutlet weak var lbBreakfastPrice: UILabel!
    @IBOutlet weak var lbBreakfastDescription: UILabel!
    
    var currentBreakfast: ProductItem = ProductItem()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.ivBreakfastImage.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
