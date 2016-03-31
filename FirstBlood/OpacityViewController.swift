//
//  OpacityViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/31.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class OpacityViewController: UIViewController {

    @IBOutlet weak var Square: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(3) {
            self.Square.alpha = 0.05
        }
        
//        UIView.animateKeyframesWithDuration(3, delay: 4, options: [], animations: {
//            self.Square.alpha = 1
//            }, completion: nil)
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
