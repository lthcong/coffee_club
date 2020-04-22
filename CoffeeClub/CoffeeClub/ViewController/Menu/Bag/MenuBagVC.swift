//
//  MenuBagVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class MenuBagVC: UIViewController, UITableViewDataSource, UITableViewDelegate, ProductBagDelegate {
    
    @IBOutlet weak var tbvItemList: UITableView!
    @IBOutlet weak var lbDeliveryCharge: UILabel!
    @IBOutlet weak var lbSubtotal: UILabel!
    @IBOutlet weak var lbTotal: UILabel!
    @IBOutlet weak var btnSercueCheckout: UIButton!
    
    var productList: [ProductItem] = ProductBag.productList
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let bagNib = UINib(nibName: "BagCell", bundle: nil)
        self.tbvItemList.register(bagNib, forCellReuseIdentifier: "BagCellIdentifier")
        
        //  SET UP UI
        self.setupUI()
        
        //  SHOW CHECKOUT INFO
        self.showCheckoutInfo()
    }
    
    func setupUI() -> Void {
        self.btnSercueCheckout.layer.cornerRadius = 10
    }
    
    func showCheckoutInfo() -> Void {
        self.lbDeliveryCharge.text = "$ " + String(ProductBag.subCharge)
        self.lbSubtotal.text = "$ " + String(ProductBag.productCharge)
        self.lbTotal.text = "$ " + String(ProductBag.total)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bagCell = tableView.dequeueReusableCell(withIdentifier: "BagCellIdentifier", for: indexPath) as! BagCell
        
        let indexRow = indexPath.row
        bagCell.currentProduct = self.productList[indexRow]
        bagCell.onRemoveProduct = self
        bagCell.ivProductImage.image = UIImage(named: self.productList[indexRow].productImageURL)
        bagCell.lbProductName.text = self.productList[indexRow].productName
        bagCell.lbProductDes.text = self.productList[indexRow].productDescription
        bagCell.lbProductPrice.text = "$" + String(self.productList[indexRow].productPrice)
        
        return bagCell
    }
    
    func itemHasChanged(_ productList: [ProductItem]) {
        self.productList = productList
        self.tbvItemList.reloadData()
        self.showCheckoutInfo()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func sercueCheckout(_ sender: Any) {
    }
    
}
