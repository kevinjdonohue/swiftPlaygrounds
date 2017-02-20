//: Playground - noun: a place where people can play

import UIKit

class Person {
    
    var firstName: String {
        willSet {
            print("Changing firstName from \(firstName) to \(newValue)")
        }
        didSet {
            print("firstName updated from \(oldValue) to \(firstName)")
        }
    }
    
    var lastName: String {
        willSet(newLast) {
            print("Changing lastName from \(lastName) to \(newLast)")
        }
        didSet(oldLast) {
            print("Changed lastName from \(oldLast) to \(lastName)")
        }
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let p = Person(firstName: "William", lastName: "Shakespeare")
p.firstName = "Bill"
p.lastName = "Cody"
