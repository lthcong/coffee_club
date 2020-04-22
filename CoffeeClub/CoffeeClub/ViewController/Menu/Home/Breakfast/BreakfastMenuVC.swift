//
//  BreakfastMenuVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/20/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class BreakfastMenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var cvFavoriteList: UICollectionView!
    @IBOutlet weak var tbvMenuList: UITableView!
    
    var favoriteList = BreakfastFavoriteList.FAVORITE_LIST
    var menuList = BreakfastMenuList.MENU_LIST
    var selectedProduct: ProductItem = ProductItem()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI () {
        let favoriteNib = UINib(nibName: "BreakfastFavoriteCell", bundle: nil)
        cvFavoriteList.register(favoriteNib, forCellWithReuseIdentifier: "BreakfastFavoriteCellIdentifier")
        
        let menuNib = UINib(nibName: "BreakfastMenuCell", bundle: nil)
        tbvMenuList.register(menuNib, forCellReuseIdentifier: "BreakfastMenuCellIdentifier")
    }
    
    func showProductDetail() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let breakfastDetailVC = storyBoard.instantiateViewController(withIdentifier: "BreakfastDetailVCID") as! BreakfastDetailVC
        breakfastDetailVC.currentProduct = self.selectedProduct
        self.present(breakfastDetailVC, animated:true, completion:nil)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell = tableView.dequeueReusableCell(withIdentifier: "BreakfastMenuCellIdentifier", for: indexPath) as! BreakfastMenuCell
        self.selectedProduct = selectedCell.currentBreakfast
        self.showProductDetail()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuCell = tableView.dequeueReusableCell(withIdentifier: "BreakfastMenuCellIdentifier", for: indexPath) as! BreakfastMenuCell
        
        let rowIndex = indexPath.row
        menuCell.currentBreakfast = self.menuList[rowIndex]
        menuCell.ivBreakfastImage.image = UIImage(named: self.menuList[rowIndex].productImageURL)
        menuCell.lbBreakfastName.text = self.menuList[rowIndex].productName
        menuCell.lbBreakfastPrice.text = "$" + String(self.menuList[rowIndex].productPrice)
        menuCell.lbBreakfastDescription.text = self.menuList[rowIndex].productDescription
        
        return menuCell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreakfastFavoriteCellIdentifier", for: indexPath) as! BreakfastFavoriteCell        
        self.selectedProduct = selectedCell.currentProduct
        self.showProductDetail()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let favoriteCell = collectionView.dequeueReusableCell(withReuseIdentifier: "BreakfastFavoriteCellIdentifier", for: indexPath) as! BreakfastFavoriteCell
        
        let rowIndex = indexPath.row
        favoriteCell.currentProduct = self.favoriteList[rowIndex]
        favoriteCell.ivFavoriteImage.image = UIImage(named: self.favoriteList[rowIndex].productImageURL)
        favoriteCell.lbFavoriteName.text = self.favoriteList[rowIndex].productName
        favoriteCell.lbFavoritePrice.text = "$" + String(self.favoriteList[rowIndex].productPrice)
        favoriteCell.lbFavoriteDescription.text = self.favoriteList[rowIndex].productDescription
        
        return favoriteCell
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
        let breakfastVC = storyBoard.instantiateViewController(withIdentifier: "BreakfastVCID") as! BreakfastVC
        self.present(breakfastVC, animated:true, completion:nil)
    }
    
}
