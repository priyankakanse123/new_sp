//
//  Share-ms-VC.swift
//  ShoppingPad2
//
//  Created by Vidya Ramamurthy on 05/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class Share_ms_VC: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    var myContactList = ["Meena", "Eve", "Thomas", "Kedar", "Heena","BridgeLabz","Adam"]
    
    //var resultSearchController = UISearchController()
    
    @IBOutlet weak var tableView: UITableView!

    
    //var filteredResult = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
            return myContactList.count
       
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("shareMSell")! as UITableViewCell
        let cell : CustomCell = tableView.dequeueReusableCellWithIdentifier("shareMSell") as! CustomCell
    

      
           
            cell.phoneNoTypeLabel.text = "Mobile"
            cell.contactProfileIM.image = UIImage(named: "1.jpg")
            cell.contactNameLabel.text = myContactList[indexPath.row]
            cell.contactdetailsLabel.text = "Hi"

            return cell
        
        

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
