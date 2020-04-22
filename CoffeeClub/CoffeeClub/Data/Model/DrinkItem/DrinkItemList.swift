//
//  DrinkItemList.swift
//  CoffeeClub
//
//  Created by Cong La on 4/17/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class DrinkItemList {
    
    static let ESPRESSO: ProductItem = ProductItem(name: "Espresso", type: 0, des: "Blue Ridge Blend", imageUrl: "sample-expresso", price: 4.35, rating: 0)
    static let CHOCO_FRAPPE: ProductItem = ProductItem(name: "Choco Frappe", type: 1, des: "Locally Roasted", imageUrl: "sample-chocolate-frappe", price: 10.0, rating: 0)
    static let CARAMEL_FRAPPE: ProductItem = ProductItem(name: "Caramel Frappe", type: 1, des: "Decaf Colombia", imageUrl: "sample-caramel-frappe", price: 10.0, rating: 0)
    
    static let DRINK_LIST: [ProductItem] = [ESPRESSO, CHOCO_FRAPPE, CARAMEL_FRAPPE]
}
