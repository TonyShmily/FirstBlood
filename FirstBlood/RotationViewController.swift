//
//  RotationViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/31.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit



var i :Int8 = 0
class RotationViewController: UIViewController {

    @IBOutlet weak var yivvanImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func spin(){
        
        i += 1
        if (i <= 10){
        
        UIView.animateWithDuration(0.8, delay: 0, options: .CurveLinear, animations: {
            self.yivvanImage.transform = CGAffineTransformRotate(self.yivvanImage.transform, CGFloat(M_PI))
            }) { (finished) in
                self.spin()
            }
        }
        else{
            i = 0
        }
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        self.spin()
        
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
