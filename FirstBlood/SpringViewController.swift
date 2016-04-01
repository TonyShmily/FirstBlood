//
//  SpringViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/4/1.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class SpringViewController: UIViewController {

    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
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
        
        UIView.animateWithDuration(1) {
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
        }
        
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: [], animations: {
         self.redSquare.center.x = self.view.bounds.width - self.redSquare.center.x
        }, completion: nil)
        
        
        UIView.animateWithDuration(3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5, options: [], animations: {
            self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
            }, completion: nil)
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
