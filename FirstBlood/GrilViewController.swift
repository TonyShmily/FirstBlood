//
//  GrilViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/1.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//
import UIKit

class GrilViewController: UIViewController {
    
    @IBOutlet weak var starpicker: UIPickerView!
    let stars = ["周杰伦", "Jay Chou", "Lumia 950XL", "Surface Pro"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starpicker.dataSource = self
        starpicker.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToShowStar"{
            let index = starpicker.selectedRowInComponent(0)
            
            var imagename : String!
            switch index
            {
            case 0:
                imagename = "jay.jpg"
            case 1:
                imagename = "jay2.jpg"
            case 2:
                imagename = "950XL.jpg"
            case 3:
                imagename = "surface.jpg"
            default:
                imagename = nil
                
            }
            
            let vc = segue.destinationViewController as! ShowStarVC
            vc.imagename = imagename
            
        }
        
    }
    @IBAction func close(segue: UIStoryboardSegue){
        print("close")
    }

}