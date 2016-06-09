//
//  Task.swift
//  ToDo
//
//  Created by Rick  on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Task: Identity {
    var task: String
    var priority: String
    var id: String
    let dateCreated: NSDate
    
    init(task: String, priority: String){
        self.task = task
        self.priority = priority
        self.dateCreated = NSDate()
        self.id = NSUUID().UUIDString
    }
}