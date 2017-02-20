//: Playground - noun: a place where people can play

import UIKit

class Observer: NSObject {
    
    deinit {
        print("So long!")
        let nc = NotificationCenter.default
        nc.removeObserver(self, name: Notification.Name(rawValue: "TheBigEvent"), object: nil)
    }
    
    override init() {
        
        super.init()
        
        let nc = NotificationCenter.default
//        nc.addObserver(self, selector: Selector(("processBigEvent:")), name: Notification.Name(rawValue: "TheBigEvent"), object: nil)
        nc.addObserver(forName: Notification.Name(rawValue: "processBigEvent:"), object: nil, queue: nil){_ in 
            print("I am in here")
        }
    }
    
    func processBigEvent(notification: Notification){
        print("Whoa! Looks like a Big Event has occurred")
    }
    
}

let notification = Notification(name: Notification.Name(rawValue: "TheBigEvent"), object: nil, userInfo: ["message":"Hello there!", "date":Date()])

let nc = NotificationCenter.default

nc.post(notification)

var observers = [Observer()]

//var foo = Observer()

nc.post(notification)