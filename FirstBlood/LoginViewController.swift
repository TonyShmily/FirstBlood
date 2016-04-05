//
//  LoginViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/4/2.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var bubble1: UIImageView!
    @IBOutlet weak var bubble2: UIImageView!
    @IBOutlet weak var bubble3: UIImageView!
    @IBOutlet weak var bubble4: UIImageView!
    @IBOutlet weak var bubble5: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var dot: UIImageView!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .WhiteLarge)
    var loginpoint = CGPoint.zero
    let warningImage = UIImageView(image: UIImage(named:"warning"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bubble1.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble2.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble3.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble4.transform = CGAffineTransformMakeScale(0, 0)
        self.bubble5.transform = CGAffineTransformMakeScale(0, 0)
        self.dot.center.x -= self.view.bounds.width
        self.logo.center.x -= self.view.bounds.width
        
        //self.logo.alpha = 0
        //self.dot.alpha = 0
        // Do any additional setup after loading the view.
        
        
        // adjust place holder text
        let usernamepaddingView = UIView(frame: CGRectMake(0, 0, 40, username.frame.height))
        username.leftView = usernamepaddingView
        username.leftViewMode = UITextFieldViewMode.Always
        
        let passwordpaddingView = UIView(frame: CGRectMake(0, 0, 40, password.frame.height))
        password.leftView = passwordpaddingView
        password.leftViewMode = UITextFieldViewMode.Always
        
        let userImageView = UIImageView(image: UIImage(named: "user"))
        userImageView.frame.origin = CGPoint(x: 13, y: 6)
        self.username.addSubview(userImageView)
        
        let pwImageView = UIImageView(image: UIImage(named: "lock"))
        pwImageView.frame.origin = CGPoint(x: 14, y: 6)
        self.password.addSubview(pwImageView)
        
        self.username.center.x -= self.view.bounds.width
        self.password.center.x -= self.view.bounds.width
        //self.username.alpha = 0
        //self.password.alpha = 0
        
        self.loginpoint = self.login.center
        self.login.center.x -= self.view.bounds.width
        //self.login.alpha = 0
        
        self.view.addSubview(self.warningImage)
        self.warningImage.frame.size.width = self.login.frame.size.width
        self.warningImage.frame.size.height = self.login.frame.size.height
        self.warningImage.hidden = true
        self.warningImage.center = self.loginpoint
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            self.bubble1.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble5.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        UIView.animateWithDuration(0.2, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
            self.bubble3.transform = CGAffineTransformMakeScale(1, 1)
            self.bubble4.transform = CGAffineTransformMakeScale(1, 1)
            }, completion: nil)
        
        UIView.animateWithDuration(0.3, delay: 0.2, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, options: [], animations: {
                self.bubble2.transform = CGAffineTransformMakeScale(1, 1)
                }, completion: nil)

        UIView.animateWithDuration(0.5, delay: 0.3, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
            self.logo.center.x += self.view.bounds.width
            self.logo.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(2.5, delay: 0.4, usingSpringWithDamping: 0.25, initialSpringVelocity: 0, options: [], animations: {
            self.dot.center.x += self.view.bounds.width
            self.dot.alpha = 1

            }, completion: nil)
        
        
        UIView.animateWithDuration(0.4, delay: 0.5, options: .CurveEaseOut, animations: {
            self.username.center.x += self.view.bounds.width
            self.username.alpha = 1
            }, completion: nil)
        
        
        UIView.animateWithDuration(0.4, delay: 0.6, options: .CurveEaseOut, animations: {
            self.password.center.x += self.view.bounds.width
            self.password.alpha = 1
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0.7, options: .CurveEaseOut, animations: {
            self.login.center.x += self.view.bounds.width
            self.login.alpha = 1
            }, completion: nil)
        
        
    }
    
    @IBAction func loginTapped(sender: AnyObject) {
        self.login.addSubview(self.spinner)
        self.spinner.frame.origin = CGPoint(x: 13, y: 6)
        self.spinner.startAnimating()
        
        UIView.animateWithDuration(0.3) { 
            self.login.center = self.loginpoint
        }

        UIView.transitionWithView(self.warningImage, duration: 0.3, options: [.TransitionFlipFromTop , .CurveEaseOut], animations: {
            self.warningImage.hidden = true
            }, completion: nil)
        
        self.login.center.x -= 20
        
        UIView.animateWithDuration(1.5, delay: 0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0, options: [], animations: {
            self.login.center.x += 20
            }, completion: { _ in
                UIView.animateWithDuration(0.3, animations: { 
                    self.login.center.y += 60
                    self.spinner.removeFromSuperview()
                    }, completion:
                    { _ in
                        UIView.transitionWithView(self.warningImage, duration: 0.3, options: [.TransitionFlipFromTop , .CurveEaseOut], animations: { 
                            self.warningImage.hidden = false
                            }, completion: nil)
                        
                })
        })
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
