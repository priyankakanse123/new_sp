//
//  SplashScreenVC.swift
//  new_sp
//
//  Created by BridgeLabz on 18/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class SplashScreenVC: UIViewController {
    @IBOutlet weak var backLogoImageView: UIImageView!
    
    @IBOutlet weak var agreebackImageView: UIImageView!
    override func viewDidLoad() {
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "back.png")!)
        backLogoImageView.image = UIImage(named: "splashScreen.png")
        agreebackImageView.backgroundColor = UIColor.darkGrayColor()
        
        
        
           }

}
