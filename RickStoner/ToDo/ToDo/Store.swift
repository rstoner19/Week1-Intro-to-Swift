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
    private init() {} //makes it so items can't be added
    typealias Object = Task
    
    var tasks = [Object]()
}