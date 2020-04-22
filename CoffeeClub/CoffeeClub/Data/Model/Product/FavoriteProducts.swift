//
//  FavoriteProducts.swift
//  CoffeeClub
//
//  Created by Cong La on 4/21/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class FavoriteProducts {
    
    static let CHOCOLATE_MUFFIN = ProductItem(name: "Chocolate Muffin", type: -1, des: "Chocolatly fresh baked", detail: "", imageUrl: "sample-muffin", price: 4.30, rating: 4)
    static let CLASSIC_BAGEL = ProductItem(name: "Classic Bagel", type: -1, des: "Classic and fresh", detail: "", imageUrl: "sample-bagel", price: 2.0, rating: 4)
    static let CARAMEL_FRAPPE: ProductItem = ProductItem(name: "Caramel Frappe", type: 1, des: "Decaf Colombia", detail: "", imageUrl: "sample-favorite-caramel", price: 10.0, rating: 0)
    static let CLASSIC_BREAKFAST: ProductItem = ProductItem(name: "Classic Breakfast", type: -1, des: "Two warm fresh eggs", detail: "Two warm fresh eggs, choice of a thick apple wood smoked bacon or premium Tennessee sausage, choice of hash browns, and choice of buttermilk biscuit, toast or bagel", imageUrl: "sample-classic-breakfast", price: 12.00, rating: 5)
    static let CHOCO_COOKIES: ProductItem = ProductItem(name: "Choco Cookies", type: 1, des: "Freshly baked", detail: "", imageUrl: "sample-choco-cookies", price: 10.0, rating: 0)
    static let CHOCO_FRAPPE: ProductItem = ProductItem(name: "Choco Frappe", type: 1, des: "Locally Roasted", detail: "", imageUrl: "sample-favorite-choco", price: 10.0, rating: 0)
    
    static var FAVORITE_LIST: [ProductItem] = [CHOCOLATE_MUFFIN, CLASSIC_BAGEL, CARAMEL_FRAPPE, CLASSIC_BREAKFAST, CHOCO_COOKIES, CHOCO_FRAPPE]
    
    static func addToFavorite(favoriteProduct: ProductItem) {
        if (!self.FAVORITE_LIST.contains(where: {$0.productName == favoriteProduct.productName})) {
            self.FAVORITE_LIST.append(favoriteProduct)
        }
    }
}
