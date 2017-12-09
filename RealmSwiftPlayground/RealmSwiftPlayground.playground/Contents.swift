//
//  RealmSwiftPlayground.playground
//  RealmSwiftPlayground
//
//  Created by David Oliver Barreto Rodríguez on 09/12/17.
//  Copyright © 2017 David Oliver Barreto Rodríguez. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var name: String = ""
    
    convenience init(_ name: String) {
        self.init()
        self.name = name
    }
}

let realm = try! Realm()
print(Realm.Configuration.defaultConfiguration.fileURL)

let task = Task("First Task")
let tasks = realm.objects(Task.self)
print(tasks.count)

try! realm.write {
    realm.add(task)
}

print(tasks.count)

DispatchQueue(label: "background").async {
    autoreleasepool {
        let realm = try! Realm()
        let theTask = realm.objects(Task.self).first!
        try! realm.write {
            theTask.name = "other name"
        }
        print(theTask.name)
    }
}







