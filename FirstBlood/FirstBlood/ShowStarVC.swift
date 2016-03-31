//
//  ShowStarVC.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/2.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//
import UIKit
import Social

class ShowStarVC: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    var imagename : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = imagename
        {
            image.image = UIImage(named: name)
            
            switch name{
            case "jay.jpg":
                navigationItem.title = "周杰伦"
            case "jay2.jpg":
                navigationItem.title = "JAY CHOU"
            case  "950XL.jpg":
                navigationItem.title = "Lumia 950XL"
            case  "surface.jpg":
                navigationItem.title = "Surface Pro"
            default:
                navigationItem.title = "明星画廊"
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        print("close")
    }
    
    @IBAction func shareTapped(sender: AnyObject) {
        let controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        controller.setInitialText("一个简单的app的Twitter分享")
        controller.addImage(image.image)
        self.presentViewController(controller,animated: true,completion: nil)
    }
}