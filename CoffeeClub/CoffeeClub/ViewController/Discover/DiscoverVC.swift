//
//  DiscoverVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/15/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class DiscoverVC: UIViewController {

    @IBOutlet weak var vSearchView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.vSearchView.layer.cornerRadius = 25
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func searchMoreDrink(_ sender: Any) {
        self.performSegue(withIdentifier: "SignInSegueID", sender: self)
    }
    
    @IBAction func checkoutMoreDrink(_ sender: Any) {
        self.performSegue(withIdentifier: "SignInSegueID", sender: self)
    }
}
