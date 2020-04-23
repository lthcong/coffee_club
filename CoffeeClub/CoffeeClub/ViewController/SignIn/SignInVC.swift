//
//  SignInVC.swift
//  CoffeeClub
//
//  Created by Cong La on 4/23/20.
//  Copyright © 2020 Cong La. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    
    @IBOutlet weak var vMainView: UIView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnSignIn: UIButton!
    
    let DEFAULT_EMAIL = "default@email.com"
    let DEFAULT_PASSWORD = "123@password"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
    }
    
    func setupUI() -> Void {
        self.vMainView.layer.cornerRadius = 10
        self.btnSignIn.layer.cornerRadius = 10
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func doSignIn(_ sender: Any) {
        let email = tfEmail.text
        let password = tfPassword.text
        
        if (email == DEFAULT_EMAIL && password == DEFAULT_PASSWORD) {
            self.performSegue(withIdentifier: "MenuSegueID", sender: self)
        }
        else {
            Toast.show(message: "Invalid email and password. Try again!", controller: self)
        }
    }
    
}
