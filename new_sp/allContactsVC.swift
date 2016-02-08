//
//  allContactsVC.swift
//  new_sp
//
//  Created by BridgeLabz on 06/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit
import Contacts
import ContactsUI



class allContactsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //load contacts
        let contactPickerViewController = CNContactPickerViewController()
        
        //contactPickerViewController.predicateForEnablingContact = NSPredicate(format: "birthday != nil")
        
        contactPickerViewController.delegate = self as? CNContactPickerDelegate
        
        let contactStore = CNContactStore()
        var results: [CNContact] = []
        do {
            try contactStore.enumerateContactsWithFetchRequest(CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactMiddleNameKey, CNContactEmailAddressesKey,CNContactPhoneNumbersKey])) {
                (contact, cursor) -> Void in
                results.append(contact)
                //            try contactStore.enumerateContactsWithFetchRequest(CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactMiddleNameKey, CNContactEmailAddressesKey,CNContactPhoneNumbersKey])) {
                //                               (contact, cursor) -> Void in
                //                              results.append(contact)
                
                
                self.presentViewController(contactPickerViewController, animated: true, completion: nil)
                
                
                
                
            }
        }
        catch{
            print("Handle the error please")
        }
        //var a : Dictionary?  = results as Dictionary
        
        print(results)
        

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
