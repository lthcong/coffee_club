//
//  UIUtility.swift
//  CoffeeClub
//
//  Created by Cong La on 4/17/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import Foundation
import UIKit

class UIUtility {
    
    static func setSelected(btnSelectedButton: UIButton) {
        btnSelectedButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: (btnSelectedButton.titleLabel?.font.pointSize)!)
        btnSelectedButton.setTitleColor(UIColor.black, for: .normal)
    }
    
    static func setDesselected(btnDesselectedButton: UIButton) {
        btnDesselectedButton.titleLabel?.font = UIFont.systemFont(ofSize: (btnDesselectedButton.titleLabel?.font.pointSize)!)
        btnDesselectedButton.setTitleColor(UIColor.lightGray, for: .normal)
    }
    
}
