//
//  BreakfastDetailVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/20/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class BreakfastDetailVC: UIViewController {

    @IBOutlet weak var vInfoView: UIView!
    @IBOutlet weak var ivProductImage: UIImageView!
    @IBOutlet weak var lbProductName: UILabel!
    @IBOutlet weak var lbProductPrice: UILabel!
    @IBOutlet weak var lbProductDes: UILabel!
    
    var currentProduct: ProductItem = ProductItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.showProductDetail()
    }
    
    func setupUI() -> Void {
        self.vInfoView.layer.cornerRadius = 25
    }
    
    func showProductDetail() -> Void {
        self.ivProductImage.image = UIImage(named: self.currentProduct.productImageURL)
        self.lbProductName.text = self.currentProduct.productName
        self.lbProductPrice.text = "$" + String(self.currentProduct.productPrice)
        self.lbProductDes.text = self.currentProduct.productDetail
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func navigateBack(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let breakfastMenuVC = storyBoard.instantiateViewController(withIdentifier: "BreakfastMenuVCID") as! BreakfastMenuVC
        self.present(breakfastMenuVC, animated:true, completion:nil)
    }
    
    
    @IBAction func addToFavorite(_ sender: Any) {
        FavoriteProducts.addToFavorite(favoriteProduct: self.currentProduct)
        Toast.show(message: "Add to your favorite", controller: self)
    }
    
    
    @IBAction func placeTheOrder(_ sender: Any) {
    }
    
    
    @IBAction func addToBag(_ sender: Any) {
        ProductBag.addToBag(selectedProduct: self.currentProduct)
    }
    
}
