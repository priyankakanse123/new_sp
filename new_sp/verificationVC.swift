//
//  verificationVC.swift
//  new_sp
//
//  Created by BridgeLabz on 18/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class verificationVC: UIViewController {
   
    
    @IBOutlet weak var countryButtonOutlet: UIButton!
    
    @IBOutlet weak var CountryCodeOutlet: UILabel!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    var Countrycode :  String? = "code"
    var CountryName : String? = "name"
    
    override func viewDidLoad() {
        
       
        ObjectShape().makeBottomLineOfButton(countryButtonOutlet)  //set bottom line countryButton
        ObjectShape().makeBottomLineOfLabel(CountryCodeOutlet)  //set bottom line ContryCodeOutlet
        ObjectShape().makeBottomLineOfTextField(userNameTextField)  //set bottom line of userName Textfield
        
        
        //set country name & code
        countryButtonOutlet.setTitle(CountryName, forState: UIControlState.Normal)
        CountryCodeOutlet.text = Countrycode
        
        
      
        
        

 
        
        
        
        
        

    }
   
}
