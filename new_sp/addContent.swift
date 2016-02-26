//
//  addContent.swift
//  new_sp
//
//  Created by BridgeLabz on 01/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class addContent: UIViewController , UITextViewDelegate {
    
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var backgroundimageView: UIImageView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var addButtonOutlet: UIButton!
    
    @IBOutlet weak var addMediaLabel: UILabel!
    var contentimage : UIImage!
//
//    @IBAction func editButtonPressed(sender: AnyObject) {
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide tabBar
        self.tabBarController?.tabBar.hidden = true

        // set border line of textField
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: titleTextField.frame.size.height - width, width:  titleTextField.frame.size.width, height: titleTextField.frame.size.height)
        
        border.borderWidth = width
        titleTextField.layer.addSublayer(border)
        titleTextField.layer.masksToBounds = true
        
        //set ImaeView Round
        //var image: UIImage = UIImage(named: "grey.png")!
        backgroundimageView.layer.borderWidth = 1.0
        backgroundimageView.layer.masksToBounds = false
        backgroundimageView.layer.borderColor = UIColor.whiteColor().CGColor
        backgroundimageView.layer.cornerRadius = backgroundimageView.frame.size.width/2
        backgroundimageView.clipsToBounds = true
        
        //set textView Border
        let borderText = CALayer()
        //let widthText = CGFloat(2.0)
        borderText.borderColor = UIColor.darkGrayColor().CGColor
        borderText.frame = CGRect(x: 0, y: descriptionTextView.frame.size.height - width, width:  descriptionTextView.frame.size.width, height: descriptionTextView.frame.size.height)
        
        borderText.borderWidth = width
        descriptionTextView.layer.addSublayer(borderText)
        descriptionTextView.layer.masksToBounds = true
        
        //set textView placeholder
        descriptionTextView.text = "Description"
        descriptionTextView.textColor = UIColor.lightGrayColor()
        
        //set borer of add Media Label
        
        let addlabelBorder = CALayer()
        addlabelBorder.borderColor = UIColor.darkGrayColor().CGColor
        addlabelBorder.frame = CGRect(x: 0, y: addMediaLabel.frame.size.height - width, width: addMediaLabel.frame.size.width, height: addMediaLabel.frame.size.height)
        addlabelBorder.borderWidth = width
        addMediaLabel.layer.addSublayer(addlabelBorder)
        addMediaLabel.layer.masksToBounds = true
        
        //set contentimage
        if (contentimage != nil)
        {
            backgroundimageView.image = contentimage
            addButtonOutlet.hidden = true
        }
        
        //add save Button
        
        let sendButton = UIBarButtonItem(title: "Save", style: UIBarButtonItemStyle.Plain, target: self, action: "saveAction")
        
        self.navigationItem.rightBarButtonItem = sendButton
       
        //self.navigationItem.rightBarButtonItem = refreshItem;

        
    }
    func saveAction ()
    {
        print("hello")
        self.performSegueWithIdentifier("saveContent", sender: self)
        
    }
    
    
    
    
        // textView textdidchange method
        func textViewDidBeginEditing(textView: UITextView) {
        print("hello")
        if descriptionTextView.textColor == UIColor.lightGrayColor() {
            descriptionTextView.text = ""
            descriptionTextView.textColor = UIColor.blackColor()
        }
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