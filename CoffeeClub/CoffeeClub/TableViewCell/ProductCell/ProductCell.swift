//
//  ProductCell.swift
//  CoffeeClub
//
//  Created by Cong La on 4/16/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    
    
    @IBOutlet weak var ivDrinkImage: UIImageView!
    @IBOutlet weak var lbDrinkName: UILabel!
    @IBOutlet weak var lbDrinkDes: UILabel!
    @IBOutlet weak var lbDrinkPrice: UILabel!
    
    var currentDrink: ProductItem = ProductItem()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func addToBag(_ sender: Any) {
        ProductBag.addToBag(selectedProduct: self.currentDrink)
    }
    
}
