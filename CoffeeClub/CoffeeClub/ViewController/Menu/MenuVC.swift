//
//  MenuVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/15/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {
    

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var btnMenuHome: UIButton!
    @IBOutlet weak var btnMenuFavorite: UIButton!
    @IBOutlet weak var btnMenuBag: UIButton!
    @IBOutlet weak var btnMenuProfile: UIButton!
    
    @IBOutlet weak var vMainContainer: UIView!
    @IBOutlet weak var cvMenuHomeContainer: UIView!
    @IBOutlet weak var cvMenuFavoriteContainer: UIView!
    @IBOutlet weak var cvMenuBagContainer: UIView!
    
    let MENU_TILE: String = "MENU"
    let FAVORITE_TILE: String = "FAVORITE"
    let BAG_TILE: String = "BAG"
    let PROFILE_TILE: String = "PROFILE"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.showMenuHomeSelection()
    }
    
    func setUnselected() ->Void {
        btnMenuHome.setImage(UIImage(named: "unselected-home"), for: .normal)
        btnMenuFavorite.setImage(UIImage(named: "unselected-favorite"), for: .normal)
        btnMenuBag.setImage(UIImage(named: "unselected-bag"), for: .normal)
        btnMenuProfile.setImage(UIImage(named: "unselected-profile"), for: .normal)
    }
    
    func showMenuHomeSelection() -> Void {
        self.lbTitle.text = MENU_TILE
        self.setUnselected()
        self.btnMenuHome.setImage(UIImage(named: "selected-home"), for: .normal)
        self.vMainContainer.bringSubviewToFront(self.cvMenuHomeContainer)
    }
    
    func showMenuFavoriteSelection() -> Void {
        self.lbTitle.text = FAVORITE_TILE
        self.setUnselected()
        self.btnMenuFavorite.setImage(UIImage(named: "selected-favorite"), for: .normal)
        self.vMainContainer.bringSubviewToFront(self.cvMenuFavoriteContainer)
    }
    
    func showMenuBagSelection() -> Void {
        self.lbTitle.text = BAG_TILE
        self.setUnselected()
        self.btnMenuBag.setImage(UIImage(named: "selected-bag"), for: .normal)
        self.vMainContainer.bringSubviewToFront(self.cvMenuBagContainer)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func menuHomeSelection(_ sender: Any) {
        self.showMenuHomeSelection()
    }
    
    
    @IBAction func menuFavoriteSelection(_ sender: Any) {
        self.showMenuFavoriteSelection()
    }
    
    @IBAction func menuBagSelection(_ sender: Any) {
        self.showMenuBagSelection()
    }
    
    @IBAction func menuProfileSelection(_ sender: Any) {
    }
    

}
