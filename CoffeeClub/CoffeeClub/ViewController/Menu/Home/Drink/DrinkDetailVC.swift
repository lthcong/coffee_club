//
//  DrinkDetailVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/16/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class DrinkDetailVC: UIViewController {

    
    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var lbDrinkName: UILabel!
    @IBOutlet weak var lbDrinkDetail: UILabel!
    @IBOutlet weak var lbDrinkPrice: UILabel!
    
    var currentProduct: ProductItem = ProductItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // SET UP UI
        self.setupUI()
        
        //  SHOW DETAIL
        self.showDrinkDetail()
    }
    
    func setupUI() -> Void {
        self.vMainView.layer.cornerRadius = 25
    }
    
    func showDrinkDetail() -> Void {
        self.lbDrinkName.text = self.currentProduct.productName
        self.lbDrinkDetail.text = self.currentProduct.productDetail
        self.lbDrinkPrice.text = "$" + String(self.currentProduct.productPrice)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func addToFavorite(_ sender: Any) {
        FavoriteProducts.addToFavorite(favoriteProduct: currentProduct)
    }
    
    @IBAction func addToBag(_ sender: Any) {
        ProductBag.addToBag(selectedProduct: self.currentProduct)
    }
    
    @IBAction func navigateBack(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let drinkVC = storyBoard.instantiateViewController(withIdentifier: "DrinkVCID") as! DrinkVC
        self.present(drinkVC, animated:true, completion:nil)
    }
}
