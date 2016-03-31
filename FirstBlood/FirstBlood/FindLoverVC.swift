//
//  FindLoverVC.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/1.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class FindLoverVC: UIViewController {

    @IBOutlet weak var edt_name: UITextField!
    @IBOutlet weak var sc_sex: UISegmentedControl!
    @IBOutlet weak var dp_birthday: UIDatePicker!
    //@IBOutlet weak var slider_height: UISlider!
    @IBOutlet weak var lb_height: UILabel!
    @IBOutlet weak var switch_house: UISwitch!
    @IBOutlet weak var switch_car: UISwitch!
    @IBOutlet weak var tv_info: UITextView!
    @IBOutlet weak var slider_height: UISlider!
    
    @IBAction func heightchanged(sender: AnyObject) {
        let slider_height = sender as! UISlider
        let i = Int(slider_height.value)
        slider_height.value = Float(i)
        lb_height.text = "\(i)厘米"
    }
    
    @IBAction func btn_OK(sender: AnyObject) {
        var sexText = ""
        switch sc_sex.selectedSegmentIndex
        {
            case 0:
                sexText = "男"
            case 1:
                sexText = "女"
            case 2:
                sexText = "性别保密"
            default:
                sexText = "性别未填写"
        }
        
        let gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now = NSDate()
        let components = gregorian?.components(NSCalendarUnit.Year, fromDate: dp_birthday.date, toDate: now, options: NSCalendarOptions(rawValue: 0))
        
        let age = components!.year
        let hasHouseText = switch_house.on ? "有房" : "没房"
        let hasCarText = switch_car.on ? "有车" : "没车"
        
        
        tv_info.text = "\(edt_name.text!)，\(sexText)，\(age)岁，身高\(lb_height.text!)，\(hasHouseText)\(hasCarText)"
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sc_sex.selectedSegmentIndex = 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.edt_name.resignFirstResponder()
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
        
    }
    
}