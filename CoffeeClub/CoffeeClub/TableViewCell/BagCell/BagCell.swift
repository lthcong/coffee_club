//
//  BagCell.swift
//  CoffeeClub
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class BagCell: UITableViewCell {

    
    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var ivProductImage: UIImageView!
    @IBOutlet weak var lbProductName: UILabel!
    @IBOutlet weak var lbProductDes: UILabel!
    @IBOutlet weak var lbProductPrice: UILabel!
    
    var currentProduct: ProductItem = ProductItem()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        self.vMainView.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func removeFromBag(_ sender: Any) {
    }
    
}
