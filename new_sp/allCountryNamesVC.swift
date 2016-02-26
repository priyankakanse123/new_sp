//
//  allCountryNamesVC.swift
//  new_sp
//
//  Created by BridgeLabz on 19/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class allCountryNamesVC: UIViewController , UITableViewDataSource , UITableViewDelegate {

    var countryNames : [String]!
    var country = String()
    var countrycode = String()
    override func viewDidLoad() {
        
        
        countryNames = countryModel().countryNames()
        //self.countryDataFetch()
        
        print ("countrynames in vc" , countryNames)
        
        
        
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryNames.count
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("countryCell")
        cell?.textLabel?.text = countryNames [ indexPath.row]
                return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        country = countryNames [indexPath.row]
        
        countrycode = countryModel().findCountryCode(country)
        
        self.performSegueWithIdentifier("passCountryInfo", sender: nil)
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "passCountryInfo"{
            let vc = segue.destinationViewController as! verificationVC
            vc.CountryName = country
            vc.Countrycode = countrycode
            print("inside segue" , vc.CountryName)
            print("countrycode in tbleview" , vc.Countrycode)
            
        }
    }
    
    
    
    
}
