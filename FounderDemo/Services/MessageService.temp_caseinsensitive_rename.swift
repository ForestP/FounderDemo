//
//  messageService.swift
//  FounderDemo
//
//  Created by Forest Plasencia on 1/3/18.
//  Copyright © 2018 Forest Plasencia. All rights reserved.
//

import Foundation
import RealmSwift

class MessageService {
    private static let _instance = MessageService()
    
    static var instance: MessageService {
        return _instance
    }
    
    lazy var realm = try! Realm()
    
    
    func createMessage(taskDesc: String, taskPriority: Int) {
        let newTask = Task()
        newTask.taskDesc = taskDesc
        newTask.taskPriority = taskPriority
        newTask.createdDate = NSDate()
        newTask.taskId = UUID().uuidString
        
        
        try! realm.write {
            self.realm.add(newTask)
        }
        
        
    }
    
    func editTask(taskId: String, newDesc: String, newPriority: Int) {
        
        let taskToEdit = Task()
        taskToEdit.taskDesc = newDesc
        taskToEdit.taskPriority = newPriority
        taskToEdit.taskId = taskId
        
        try! realm.write {
            realm.add(taskToEdit, update: true)
        }
        
    }
    
    func deleteTask(taskToDelete: Task) {
        try! realm.write {
            realm.delete(taskToDelete)
        }
        
    }
    
}
