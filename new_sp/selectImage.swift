//
//  selectImage.swift
//  new_sp
//
//  Created by BridgeLabz on 05/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit


class selectImage: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    var functions : [String]! = ["Camera Roll" , "My Images" , "Family" , "Friends" ]
    var contentNumbers : [String]! = ["2" ,"5" , "6" , "9"]
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        
        // Configure the cell...
        
        
        cell.textLabel?.text = self.functions [indexPath.row]
        cell.detailTextLabel?.text = self.contentNumbers [indexPath.row]
        cell.imageView?.image = UIImage(named: "Screenshot.png")
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
