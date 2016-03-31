//
//  KoreanViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/15.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit
import Social

class KoreanViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func facebookTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        controller.setInitialText("一个简单的app的Twitter分享")
        controller.addImage(image.image)
        self.presentViewController(controller,animated: true,completion: nil)

    }
    
    @IBAction func twitterTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("一个简单的app的Twitter分享")
        controller.addImage(image.image)
        self.presentViewController(controller,animated: true,completion: nil)

    }
    
    @IBAction func weiboTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
        
        controller.setInitialText("一个简单的app的Twitter分享")
        controller.addImage(image.image)
        self.presentViewController(controller,animated: true,completion: nil)

        
    }
}