//
//  MenuItem.swift
//  CoffeeClub
//
//  Created by Cong La on 4/15/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class MenuItem {
    var itemID: Int = -1    
    var itemImage: String = ""
    var itemTitle: String = ""
    var itemDescription: String = ""
    
    init() { }
    
    init(itemImage: String, itemTitle: String, itemDescription: String) {
        self.itemImage = itemImage
        self.itemTitle = itemTitle
        self.itemDescription = itemDescription
    }
}
