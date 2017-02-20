//: Playground - noun: a place where people can play

import UIKit

//Classes and Class instances

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    //instance method
    func say(phrase: String) {
        print("\(firstName) \(lastName) says '\(phrase)'")
    }
    
    //class method
    class func say(phrase: String) {
        print("...and the people all say '\(phrase)'")
    }
}

//instance method invocation
let p1 = Person(firstName: "Alex", lastName: "Vollmer")
p1.say("let's write some Swift!")

//class method invocation
Person.say("blah")
