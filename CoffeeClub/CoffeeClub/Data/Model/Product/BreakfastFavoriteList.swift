//
//  BreakfastFavorite.swift
//  CoffeeClub
//
//  Created by Cong La on 4/20/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class BreakfastFavoriteList {
    
    static let CHOCOLATE_MUFFIN = ProductItem(name: "Chocolate Muffin", type: -1, des: "Chocolatly fresh baked", detail: "", imageUrl: "sample-muffin", price: 4.30, rating: 4)
    static let CLASSIC_BAGEL = ProductItem(name: "Classic Bagel", type: -1, des: "Classic and fresh", detail: "", imageUrl: "sample-bagel", price: 2.0, rating: 4)
    
    static let FAVORITE_LIST : [ProductItem] = [CHOCOLATE_MUFFIN, CLASSIC_BAGEL]
}
