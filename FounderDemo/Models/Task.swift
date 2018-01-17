//
//  Task.swift
//  ToDo-Realm
//
//  Created by Forest Plasencia on 4/4/17.
//  Copyright © 2017 Forest Plasencia. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var taskDesc = ""
    @objc dynamic var createdDate = NSDate()
    @objc dynamic var taskPriority = 0
    @objc dynamic var taskId = ""
    
    override static func primaryKey() -> String? {
        return "taskId"
    }

}
