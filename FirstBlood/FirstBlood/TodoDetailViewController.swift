//
//  TodoDetailViewController.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/18.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class TodoDetailViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var childbutton: UIButton!
    @IBOutlet weak var shoppingbutton: UIButton!
    @IBOutlet weak var phonebutton: UIButton!
    @IBOutlet weak var travelbutton: UIButton!
    @IBOutlet weak var todoitem: UITextField!
    @IBOutlet weak var tododate: UIDatePicker!
    
    var todo: TodoModel?
    
    func resetButtons(){
        childbutton.selected = false
        shoppingbutton.selected = false
        phonebutton.selected = false
        travelbutton.selected = false
    }
    
    @IBAction func childTapped(sender: AnyObject) {
        resetButtons()
        childbutton.selected = true
    }
    
    @IBAction func shoppingTapped(sender: AnyObject) {
        resetButtons()
        shoppingbutton.selected = true
    }
    
    @IBAction func phoneTapped(sender: AnyObject) {
        resetButtons()
        phonebutton.selected = true
    }
    
    @IBAction func travelTapped(sender: AnyObject) {
        resetButtons()
        travelbutton.selected = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoitem.delegate = self
        
        
        if todo == nil{
            childbutton.selected = true
            navigationItem.title = "新增Todo"
        }
        else
        {
            navigationItem.title = "修改Todo"
            if todo?.image == "selected-child"
            {
                childbutton.selected = true
            }
            else if todo?.image == "selected-shopping-cart"
            {
                shoppingbutton.selected = true
            }
            else if todo?.image == "selected-phone"
            {
                phonebutton.selected = true
            }
            else if todo?.image == "selected-travel"
            {
                travelbutton.selected = true
            }
            
            todoitem.text = todo?.title
            tododate.setDate((todo?.date)!, animated: false)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        
        var image = ""
        if childbutton.selected{
            image = "selected-child"
        }
        else if shoppingbutton.selected{
            image = "selected-shopping-cart"
        }
        else if phonebutton.selected{
            image = "selected-phone"
        }
        else if travelbutton.selected{
            image = "selected-travel"
        }
        
        if todo == nil
        {
            let uuid = NSUUID().UUIDString
            todo = TodoModel(id: uuid, image: image, title: todoitem.text!, date: tododate.date)
            todos.append(todo!)
        }else
        {
            todo!.image = image
            todo!.title = todoitem.text!
            todo!.date = tododate.date
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        todoitem.resignFirstResponder()
    }
    
}