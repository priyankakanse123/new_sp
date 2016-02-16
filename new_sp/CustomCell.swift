//
//  CustomCell.swift
//  ShoppingPad2
//
//  Created by Vidya Ramamurthy on 03/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell{
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var participantName: UILabel!
    
    @IBOutlet weak var viewsLable: UILabel!
    
    // For COntactConetntcView
    
    
    @IBOutlet weak var actionLable: UILabel!
    @IBOutlet weak var openedLabel: UILabel!
    
    @IBOutlet weak var ViewTabImageView: UIImageView!
    
    // For ViewTab 
    
    // For viewContact
    @IBOutlet weak var accesoryTypeDetailsLable: UILabel!
    
    @IBOutlet weak var cellLable1: UILabel!
    @IBOutlet weak var cellLable2: UILabel!
    
    
    
    
    // for shareMS
    @IBOutlet weak var phoneNoTypeLabel: UILabel!
    
    @IBOutlet weak var contactProfileIM: UIImageView!
    //viewTabVC
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contentTitle: UILabel!
    @IBOutlet weak var ViewAction: UILabel!
    @IBOutlet weak var lastViewTime: UILabel!
    
    @IBOutlet weak var contactdetailsLabel: UILabel!
    @IBAction func sendMessage(sender: AnyObject) {
    }
    
    @IBOutlet weak var contactNameviewtb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //create instant of default label size
       cutomCellSizes().cellTitleSize(contactNameviewtb)
        
          //ViewTabVC
//        contactNameviewtb.font = UIFont.boldSystemFontOfSize((c?.cellTitleLabelSize)!)
//        contentTitle.font = contentTitle.font.fontWithSize((c?.cellSubTitleSizes)!)
//        ViewAction.font = ViewAction.font.fontWithSize((c?.cellSubTitleSizes)!)
//        lastViewTime.font = lastViewTime.font.fontWithSize((c?.cellSubTitleSizes)!)
    }
    
}