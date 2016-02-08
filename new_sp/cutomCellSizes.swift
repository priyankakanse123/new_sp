//
//  cutomCellSizes.swift
//  new_sp
//
//  Created by BridgeLabz on 06/02/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class cutomCellSizes: UIViewController {
    //Define cell attribute sizes
    let TitleFontSize : CGFloat = 8
    let SubtitleFontSize : CGFloat = 9
    
    //cell attribute sizes functions
    func cellTitleSize (Title : UILabel!)
   {
        Title.font = UIFont.boldSystemFontOfSize(self.TitleFontSize)
    }
    
    func cellSubtitleSize (Subtitle : UILabel)
    {
        Subtitle.font = Subtitle.font.fontWithSize(self.SubtitleFontSize)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
