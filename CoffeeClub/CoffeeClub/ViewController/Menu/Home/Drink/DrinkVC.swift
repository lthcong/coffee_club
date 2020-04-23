//
//  DrinkVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/16/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class DrinkVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var vSearchView: UIView!
    @IBOutlet weak var tfSearchInfo: UITextField!
    @IBOutlet weak var btnAllCoffee: UIButton!
    @IBOutlet weak var btnColdCoffee: UIButton!
    @IBOutlet weak var btnHotCoffee: UIButton!
    @IBOutlet weak var tbvDrinkList: UITableView!
    
    var drinkList = DrinkItemList.DRINK_LIST
    var selectedDrinkType: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // SET UP UI
        self.setupUI()
    }
    
    func setupUI() -> Void {
        self.vMainView.layer.cornerRadius = 25
        
        self.tfSearchInfo.delegate = self
        self.vSearchView.layer.cornerRadius = 27
        self.vSearchView.layer.borderColor = UIColor.lightGray.cgColor
        self.vSearchView.layer.borderWidth = 1
        
        //  GET ALL COFEE
        setAllCoffeeSelected()
        
        //  REGISTER
        let drinkNib = UINib(nibName: "ProductCell", bundle: nil)
        self.tbvDrinkList.register(drinkNib, forCellReuseIdentifier: "ProductCellIdentifier")
    }
    
    func setAllCoffeeSelected() -> Void {
        //  UPDATE UI
        UIUtility.setSelected(btnSelectedButton: btnAllCoffee)
        UIUtility.setDesselected(btnDesselectedButton: btnColdCoffee)
        UIUtility.setDesselected(btnDesselectedButton: btnHotCoffee)
        
        //  RELOAD
        self.selectedDrinkType = -1
        self.reloadDrinkList()
    }
    
    func setHotCoffeeSelected() -> Void {
        //  UPDATE UI
        UIUtility.setDesselected(btnDesselectedButton: btnAllCoffee)
        UIUtility.setSelected(btnSelectedButton: btnHotCoffee)
        UIUtility.setDesselected(btnDesselectedButton: btnColdCoffee)
        
        //  RELOAD
        self.selectedDrinkType = 0
        self.reloadDrinkList()
    }
    
    func setColdCoffeeSelected() -> Void {
        //  UPDATE UI
        UIUtility.setDesselected(btnDesselectedButton: btnAllCoffee)
        UIUtility.setDesselected(btnDesselectedButton: btnHotCoffee)
        UIUtility.setSelected(btnSelectedButton: btnColdCoffee)
        
        //  RELOAD
        self.selectedDrinkType = 1
        self.reloadDrinkList()
    }
    
    func reloadDrinkList() {
        if (self.selectedDrinkType == -1) {
            self.drinkList = DrinkItemList.DRINK_LIST
        }
        else {
            self.drinkList = DrinkItemList.DRINK_LIST.filter({$0.productType == self.selectedDrinkType})
        }
        self.tbvDrinkList.reloadData()
    }
    
    @IBAction func onChange(_ sender: Any) {
        let searchInfo = String(self.tfSearchInfo.text?.lowercased() ?? "")
        if (searchInfo.count > 0) {
            if (self.selectedDrinkType > -1) {
                self.drinkList = DrinkItemList.DRINK_LIST.filter({
                    $0.productName.lowercased().contains(searchInfo) &&
                    $0.productType == self.selectedDrinkType
                })
            }
            else {
                self.drinkList = DrinkItemList.DRINK_LIST.filter({
                    $0.productName.lowercased().contains(searchInfo)
                })
            }
            self.tbvDrinkList.reloadData()
        }
        else {
            self.drinkList = DrinkItemList.DRINK_LIST
            self.tbvDrinkList.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drinkList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productCell = tableView.dequeueReusableCell(withIdentifier: "ProductCellIdentifier", for: indexPath) as! ProductCell
        
        let rowIndex = indexPath.row
        productCell.currentDrink = drinkList[rowIndex]
        productCell.ivDrinkImage.image = UIImage(named: drinkList[rowIndex].productImageURL)
        productCell.lbDrinkName.text = drinkList[rowIndex].productName
        productCell.lbDrinkDes.text = drinkList[rowIndex].productDescription
        
        if (drinkList[rowIndex].productPrice < 10.0) {
            productCell.lbDrinkPrice.text = "$" + String(format: "%.2f",drinkList[rowIndex].productPrice)
        }
        else {
            productCell.lbDrinkPrice.text = "$" + String(drinkList[rowIndex].productPrice)
        }
        
        return productCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let drinkCell = tableView.cellForRow(at: indexPath) as! ProductCell
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let drinkDetailVC = storyBoard.instantiateViewController(withIdentifier: "DrinkDetailVCID") as! DrinkDetailVC
        drinkDetailVC.currentProduct = drinkCell.currentDrink
        self.present(drinkDetailVC, animated:true, completion:nil)
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
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVCID") as! MenuVC
        self.present(menuVC, animated:true, completion:nil)
    }
    
    
    @IBAction func getAllCoffee(_ sender: Any) {
        self.setAllCoffeeSelected()
    }
    
    @IBAction func getColdCoffee(_ sender: Any) {
        self.setColdCoffeeSelected()
    }
    
    @IBAction func getHotCoffee(_ sender: Any) {
        self.setHotCoffeeSelected()
    }
    
}
