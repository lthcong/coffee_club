//
//  MenuItemList.swift
//  CoffeeClub
//
//  Created by Cong La on 4/15/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation
class MenuItemList {
    
    static let COFFEE: MenuItem = MenuItem(itemImage: "sample-coffee", itemTitle: "Coffee", itemDescription: "Freshly brewed coffee")
    static let BREAKFAST: MenuItem = MenuItem(itemImage: "sample-breakfast", itemTitle: "Breakfast", itemDescription: "Hearty, hot & Fresh")
    static let MUNCHIES: MenuItem = MenuItem(itemImage: "sample-munchies", itemTitle: "Munchies", itemDescription: "Perfectly Baked Goodies")
    static let LUNCH: MenuItem = MenuItem(itemImage: "sample-lunch", itemTitle: "Lunch", itemDescription: "Hearty, hot & Fresh")
    static let FRIES: MenuItem = MenuItem(itemImage: "sample-fries", itemTitle: "Fries", itemDescription: "Fresh & Crispy")
    static let DRINK: MenuItem = MenuItem(itemImage: "sample-drink", itemTitle: "Drink", itemDescription: "Hearty, & Fresh")
    
    static let ITEM_LIST: [MenuItem] = [COFFEE, BREAKFAST, MUNCHIES, LUNCH, FRIES, DRINK]
    
}
