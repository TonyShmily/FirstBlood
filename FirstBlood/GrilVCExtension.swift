//
//  GrilVCExtension.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/1.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

extension GrilViewController: UIPickerViewDataSource{

    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return stars.count
    }
}

extension GrilViewController:UIPickerViewDelegate{
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return stars[row]
    }
        
}
