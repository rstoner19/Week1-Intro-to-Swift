//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Rick  on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol: class {
    associatedtype Object: Identity
    var tasks: [Object] { get set }
    
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(index: Int) -> Object
    func objectCount() -> Int
    func allObjects() -> [Object]
    
}

extension ObjectStoreProtocol {
    
    func add(object: Object) {
        return tasks.append(object)
    }
    
    func remove(object: Object) {
        self.tasks = self.tasks.filter({ (tasks) -> Bool in
            return object.id != tasks.id
        })
    }
    
    func objectCount() -> Int {
        return self.tasks.count
    }
    
    func allObjects() -> [Object] {
        return self.tasks
    }
    
    func objectAtIndex(index: Int) -> Object {
        return tasks[index]
    }
    
}