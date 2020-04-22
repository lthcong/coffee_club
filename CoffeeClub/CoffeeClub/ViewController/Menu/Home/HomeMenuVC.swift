//
//  HomeMenuVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/15/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class HomeMenuVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var cvMenuList: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI() -> Void {
        let menuNib = UINib(nibName: "MenuCollectionCell", bundle: nil)
        self.cvMenuList.register(menuNib, forCellWithReuseIdentifier: "MenuCollectionCellIdentifier")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MenuItemList.ITEM_LIST.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var nextVC: UIViewController = storyBoard.instantiateViewController(withIdentifier: "DrinkVCID") as! DrinkVC
        
        let selectedCell = collectionView.cellForItem(at: indexPath) as! MenuCollectionCell
        if (selectedCell.currentMenuItem.itemTitle == MenuItemList.COFFEE.itemTitle) {
            nextVC = storyBoard.instantiateViewController(withIdentifier: "DrinkVCID") as! DrinkVC
        }
        else {
            if (selectedCell.currentMenuItem.itemTitle == MenuItemList.BREAKFAST.itemTitle) {
                nextVC = storyBoard.instantiateViewController(withIdentifier: "BreakfastVCID") as! BreakfastVC
            }
        }
        
        self.present(nextVC, animated:true, completion:nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let menuCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionCellIdentifier", for: indexPath) as! MenuCollectionCell
        
        let cellIndex = indexPath.row
        
        menuCell.currentMenuItem = MenuItemList.ITEM_LIST[cellIndex]
        menuCell.ivMenuItemImage.image = UIImage(named: MenuItemList.ITEM_LIST[cellIndex].itemImage)
        menuCell.lbMenuItemName.text = MenuItemList.ITEM_LIST[cellIndex].itemTitle
        menuCell.lbMenuItemDescription.text = MenuItemList.ITEM_LIST[cellIndex].itemDescription
        
        return menuCell
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
