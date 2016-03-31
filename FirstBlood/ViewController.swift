//
//  ViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/2/24.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        
//        image.layer.borderWidth = 1
//        image.layer.borderColor = UIColor.blueColor().CGColor
        //image.layer.cornerRadius = 15
        //image.layer.masksToBounds = true
        
//        image.layer.shadowColor = UIColor.blackColor().CGColor
//        image.layer.shadowOpacity = 0.45
//        image.layer.shadowOffset = CGSizeMake(10.0, 10.0)
//        image.layer.shadowRadius = 5.0
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        
        if let year = Int(yearOfBirth.text!)
        {
            let imageNumber = (year - offset) % 12 + 1
            image.image = UIImage(named: String(imageNumber) + ".jpg")
        }
        else
        {
            
        }
    }

    @IBAction func close(segue: UIStoryboardSegue){
        
    }
    
}

