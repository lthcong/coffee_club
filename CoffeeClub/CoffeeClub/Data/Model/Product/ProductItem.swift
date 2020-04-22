//
//  ProductItem.swift
//  CoffeeClub
//
//  Created by Cong La on 4/20/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class ProductItem {
    
    var productID: Int = -1
    var productName: String = ""
    var productType: Int = 1
    var productDescription: String = ""
    var productDetail: String = ""
    var productImageURL: String = ""
    var productPrice: Double = 4.30
    var productRating: Int = 0
    
    init() { }
    
    init(name: String, type: Int, des: String, imageUrl: String, price: Double, rating: Int) {
        self.productName = name
        self.productType = type
        self.productDescription = des
        self.productDetail = des
        self.productImageURL = imageUrl
        self.productPrice = price
        self.productRating = rating
    }
    
    init(name: String, type: Int, des: String, detail: String, imageUrl: String, price: Double, rating: Int) {
        self.productName = name
        self.productType = type
        self.productDescription = des
        self.productDetail = detail
        self.productImageURL = imageUrl
        self.productPrice = price
        self.productRating = rating
    }
    
}
