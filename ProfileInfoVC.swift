//
//  ProfileInfoVC.swift
//  new_sp
//
//  Created by BridgeLabz on 25/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ProfileInfoVC: UIViewController {
    
    @IBOutlet weak var ProfilePicImageView: UIImageView!
    
    @IBOutlet weak var ProfileNameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        
        ObjectShape().makeImageViewRound(ProfilePicImageView)
        ObjectShape().makeBottomLineOfTextField(ProfileNameTextField)
//        let results:FMResultSet? = databaseConnectivity().FetchDataQuery("SELECT COUNTRYCODE FROM COUNTRYINFO WHERE COUNTRYNAME = 'CANADA'")
//        
        
//        if results?.next() == true
//        {
//
//            
//        var countryCode : String? = results?.stringForColumn("countrycode")!
//            print(countryCode)
//        
//        }

        
    }
    
    
    
    
    

}
