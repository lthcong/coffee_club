//
//  SubmitOrderVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/23/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class SubmitOrderVC: UIViewController {

    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var lbCashOnDelivery: UILabel!
    @IBOutlet weak var btnSubmitOrder: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI() -> Void {
        self.vMainView.layer.cornerRadius = 20
        self.btnSubmitOrder.layer.cornerRadius = 10
        
        lbCashOnDelivery.text = lbCashOnDelivery.text! + " - $" + String(ProductBag.total)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func goHome(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVCID") as! MenuVC
        self.present(menuVC, animated:true, completion:nil)
    }
    
    @IBAction func submitOrder(_ sender: Any) {
        Toast.show(message: "Successfully submitted your order.", controller: self)
        ProductBag.checkoutBag()
    }
    
}
