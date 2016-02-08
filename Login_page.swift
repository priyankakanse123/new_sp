//
//  Login_page.swift
//  new_sp
//
//  Created by BridgeLabz on 01/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class Login_page: UIViewController {

    @IBOutlet weak var loginFail: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.secureTextEntry = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginButtonPressed(sender: AnyObject) {
        
        if ( usernameTextField.text == "username" && passwordTextField.text == "password")
        {
           self.performSegueWithIdentifier("viewHomePage", sender: nil)
        }
        else
        {
            loginFail.text = "Invalid ID or Password. Please Try again"
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
