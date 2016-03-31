//
//  PositionViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/23.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class PositionViewController: UIViewController {

    
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var blackSquare: UIView!
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
        
        UIView.animateWithDuration(1, animations: {
            self.blackSquare.alpha = 0
            self.greenSquare.alpha = 1
            self.redSquare.alpha = 0.5
            self.greenSquare.center.x = self.view.bounds.width - self.greenSquare.center.x
            
        })
        
        UIView.animateKeyframesWithDuration(1, delay: 0.8, options: [], animations: {
            self.yellowSquare.alpha = 0.5
            self.redSquare.alpha = 1
            self.redSquare.center.y = self.view.bounds.height - self.redSquare.center.y + 80
            }, completion: nil)
        
        UIView.animateKeyframesWithDuration(1, delay: 1.6, options: [], animations: {
            self.yellowSquare.alpha = 1
            self.yellowSquare.center.x = self.view.bounds.width - self.yellowSquare.center.x
            self.yellowSquare.center.y = self.view.bounds.height - self.yellowSquare.center.y + 80
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
