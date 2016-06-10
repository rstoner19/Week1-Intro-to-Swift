//
//  Store.swift
//  ToDo
//
//  Created by Rick  on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class Store: ObjectStoreProtocol {
    static let shared = Store()

    private init() {
        if let
            storedItems = NSKeyedUnarchiver.unarchiveObjectWithFile(Store.ArchiveURL.path!) as? [Object] {
         self.tasks = storedItems
        }
    } //makes it so items can't be added
    typealias Object = Task
    
    static let DocumentsDirectory = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.URLByAppendingPathComponent("tasks")
    
    var tasks = [Object]()

}