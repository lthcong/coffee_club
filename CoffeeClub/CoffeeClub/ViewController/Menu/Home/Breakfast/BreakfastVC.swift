//
//  BreakfastVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/17/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class BreakfastVC: UIViewController {

    @IBOutlet weak var vMainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI() -> Void {
        self.vMainView.layer.cornerRadius = 20
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func showFullBreakfastMenu(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let breakfastMenuVC = storyBoard.instantiateViewController(withIdentifier: "BreakfastMenuVCID") as! BreakfastMenuVC
        self.present(breakfastMenuVC, animated:true, completion:nil)
    }
    
}
