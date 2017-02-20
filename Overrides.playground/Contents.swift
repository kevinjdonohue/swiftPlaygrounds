//: Playground - noun: a place where people can play

import UIKit

class Person {
    let firstName: String
    let lastName: String
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Person {
    override var fullName: String {
        get {
            return super.fullName.uppercased()
        }
    }
}

var p = Person(firstName: "Alex", lastName: "Vollmer")

var s = Student(firstName: "Ferris", lastName: "Bueller")

p.fullName

s.fullName
