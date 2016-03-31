//
//  TodoModel.swift
//  FirstBlood
//
//  Created by 姚鸿 on 16/3/17.
//  Copyright © 2016年 TonyShmily. All rights reserved.
//

import UIKit

class TodoModel: NSObject {
    var id: String
    var image: String
    var title: String
    var date: NSDate
    
    init(id: String, image :String, title: String, date:NSDate){
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}
//
//struct TodoModel2{
//    var id: String
//    var image: String
//    var title: String
//    var date: NSDate
//}