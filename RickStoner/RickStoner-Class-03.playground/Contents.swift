//: Playground - noun: a place where people can play
//import Foundation
import UIKit

protocol Identity {
    var id: String { get set }
}

class Todo: Identity {
    var id: String
    
    init(){
        self.id = NSUUID().UUIDString
    }
}

class Task: Todo {
    var task: String
    var priority: String
    let dateCreated: NSDate
    
    init(task: String, priority: String){
        self.task = task
        self.priority = priority
        self.dateCreated = NSDate()
    }
}

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


class Store: ObjectStoreProtocol {
    static let shared = Store()
    private init() {} //makes it so items can't be added
    typealias Object = Task
    
    var tasks = [Object]()
}

let taskOne = Task(task: "Buy Beer", priority: "Urgent")
let taskTwo = Task(task: "Buy Food", priority: "Low")
let taskThree = Task(task: "Finish Code", priority: "Immediate!")

Store.shared.add(taskOne)
Store.shared.add(taskTwo)
Store.shared.add(taskThree)

let test = Store.shared.objectAtIndex(1)
print(Store.shared.objectCount())
Store.shared.remove(taskTwo)
print(Store.shared.objectCount())

for task in Store.shared.allObjects() {
    print("Todo: \(task.task), priority: \(task.priority), Created on: \(task.dateCreated)")
}






