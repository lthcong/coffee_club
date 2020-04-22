//
//  FavoriteVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/21/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class FavoriteVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var cvFavoriteList: UICollectionView!
    
    var favoriteList: [ProductItem] = [ProductItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.startup()
        self.setupUI()
    }
    
    func startup() -> Void {
        self.favoriteList.append(contentsOf: FavoriteProducts.FAVORITE_LIST)
    }
    
    func setupUI() -> Void {
        let favoriteNib = UINib(nibName: "FavoriteProductCell", bundle: nil)
        self.cvFavoriteList.register(favoriteNib, forCellWithReuseIdentifier: "FavoriteProductCellIdentifier")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.favoriteList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let favoriteCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteProductCellIdentifier", for: indexPath) as! FavoriteProductCell
        let rowIndex = indexPath.row
        favoriteCell.currentProduct = self.favoriteList[rowIndex]
        favoriteCell.ivFavoriteImage.image = UIImage(named: self.favoriteList[rowIndex].productImageURL)
        favoriteCell.lbFavoriteName.text = self.favoriteList[rowIndex].productName
        favoriteCell.lbFavoriteDes.text = self.favoriteList[rowIndex].productDescription
        
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

}
