//
//  ProductBag.swift
//  CoffeeClub
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class ProductBag {
    
    static var productList: [ProductItem] = [ProductItem]()
    static var total: Double = 0.0
    static var productCharge: Double = 0.0
    static var subCharge: Double = 10.0
    
    init() { }
    
    static func addToBag(selectedProduct: ProductItem) -> Void {
        if (!self.productList.contains(where: {$0.productName == selectedProduct.productName})) {
            self.productList.append(selectedProduct)
            self.updateBagInfo()
        }
    }
    
    static private func updateBagInfo() {
        //  UPDATE PRODUCT CHARGE
        self.productList.forEach() {
            productCharge = productCharge + $0.productPrice
        }
        
        //  UPDATE TOTAL
        self.total = self.productCharge + self.subCharge
    }
    
    
}
