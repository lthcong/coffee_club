//
//  MenuBagVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/22/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class MenuBagVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tbvItemList: UITableView!
    
    var productList: [ProductItem] = ProductBag.productList
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let bagNib = UINib(nibName: "BagCell", bundle: nil)
        self.tbvItemList.register(bagNib, forCellReuseIdentifier: "BagCellIdentifier")
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bagCell = tableView.dequeueReusableCell(withIdentifier: "BagCellIdentifier", for: indexPath) as! BagCell
        
        return bagCell
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
