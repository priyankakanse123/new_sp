//
//  ObjectShape.swift
//  new_sp
//
//  Created by BridgeLabz on 25/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ObjectShape: UIViewController {
    
    
    //make imageView Round
    func makeImageViewRound (DefaultImageView : UIImageView)
    {
        DefaultImageView.layer.borderWidth = 1.0
        DefaultImageView.layer.masksToBounds = false
        DefaultImageView.layer.borderColor = UIColor.whiteColor().CGColor
        DefaultImageView.layer.cornerRadius = DefaultImageView.frame.size.width/2
        DefaultImageView.clipsToBounds = true
    }
    
    
    //make bottom border of TextField
    func makeBottomLineOfTextField(DefaultTextField : UITextField)
    {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: DefaultTextField.frame.size.height - width, width:  DefaultTextField.frame.size.width, height: DefaultTextField.frame.size.height)
        
        border.borderWidth = width
        DefaultTextField.layer.addSublayer(border)
        DefaultTextField.layer.masksToBounds = true
    }
    
    
    //make bottom border of Label
    func makeBottomLineOfLabel(DefaultTextField : UILabel)
    {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: DefaultTextField.frame.size.height - width, width:  DefaultTextField.frame.size.width, height: DefaultTextField.frame.size.height)
        
        border.borderWidth = width
        DefaultTextField.layer.addSublayer(border)
        DefaultTextField.layer.masksToBounds = true
    }
    
    
    //make bottom border of button
    func makeBottomLineOfButton(DefaultTextField : UIButton)
    {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: DefaultTextField.frame.size.height - width, width:  DefaultTextField.frame.size.width, height: DefaultTextField.frame.size.height)
        
        border.borderWidth = width
        DefaultTextField.layer.addSublayer(border)
        DefaultTextField.layer.masksToBounds = true
    }


    
    

}
