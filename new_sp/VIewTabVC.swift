//
//  VIewTabVC.swift
//  ShoppingPad2
//
//  Created by Vidya Ramamurthy on 03/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class VIewTabVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var borderLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    

        // Do any additional setup after loading the view.
        
        
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGrayColor().CGColor
        border.frame = CGRect(x: 0, y: borderLabel.frame.size.height - width, width:  borderLabel.frame.size.width, height: borderLabel.frame.size.height)
        border.borderWidth = width
        borderLabel.layer.addSublayer(border)
        borderLabel.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
       return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : CustomCell = tableView.dequeueReusableCellWithIdentifier("ViewTabCell") as! CustomCell
       
//            cell.layer.borderWidth = 1.0
//            cell.layer.borderColor = UIColor.grayColor().CGColor
        
        //code fore removing seperators
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        
        //code for drawing partial seperators
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGrayColor().CGColor
        border.frame = CGRect(x: 53, y: cell.frame.size.height - width, width:  cell.frame.size.width, height: cell.frame.size.height)
        border.borderWidth = width
        cell.layer.addSublayer(border)
        cell.layer.masksToBounds = true
        
        
        //code for making imageview round
        cell.ViewTabImageView.layer.borderWidth = 1.0
        cell.ViewTabImageView.layer.masksToBounds = false
        cell.ViewTabImageView.layer.borderColor = UIColor.blackColor().CGColor
            
        cell.ViewTabImageView.layer.cornerRadius =   cell.ViewTabImageView.frame.size.height/2
        cell.ViewTabImageView.clipsToBounds = true
        cell.ViewTabImageView.contentMode = .ScaleAspectFill
        cell.ViewTabImageView.image = UIImage(named: "6.jpg")
        
        
        
        
        
        
        
            return cell
        
      }

    @IBOutlet weak var ContactName: UILabel!
}
