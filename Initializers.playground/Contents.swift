//: Playground - noun: a place where people can play

import UIKit

class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String = "John", lastName: String = "Smith") {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    //convenience init() {
    //    self.init(firstName: "John", lastName: "Smith")
    //}
}

let p = Person(firstName: "Alex", lastName: "Vollmer")

let p2 = Person()