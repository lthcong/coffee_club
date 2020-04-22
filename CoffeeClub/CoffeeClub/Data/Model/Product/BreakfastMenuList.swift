//
//  BreakfastMenuList.swift
//  CoffeeClub
//
//  Created by Cong La on 4/20/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation

class BreakfastMenuList {
    
    static let CLASSIC_BREAKFAST: ProductItem = ProductItem(name: "Classic Breakfast", type: -1, des: "Two warm fresh eggs", detail: "Two warm fresh eggs, choice of a thick apple wood smoked bacon or premium Tennessee sausage, choice of hash browns, and choice of buttermilk biscuit, toast or bagel", imageUrl: "sample-classic-breakfast", price: 12.00, rating: 5)
    static let CHICKEN_VIGGIE_PIE: ProductItem = ProductItem(name: "Chicken & Viggie Pie", type: -1, des: "Made with tender 100% chicken and baked fresh in store everyday", imageUrl: "sample-pie", price: 6.50, rating: 0)
    static let CHOCO_COOKIES: ProductItem = ProductItem(name: "Choco Cookies", type: -1, des: "Freshly baked choco chips cookies", imageUrl: "sample-cookies", price: 2.25, rating: 0)
    static let STRAWBERRY_PANCAKES: ProductItem = ProductItem(name: "Strawberry Pancakes", type: -1, des: "Light and fluffy pancakes packed", imageUrl: "sample-pancake", price: 4.00, rating: 0)
    
    static let MENU_LIST:[ProductItem] = [CLASSIC_BREAKFAST, CHICKEN_VIGGIE_PIE, CHOCO_COOKIES, STRAWBERRY_PANCAKES]
}
