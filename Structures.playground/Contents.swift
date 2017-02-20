//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName: String = ""
    var lastName: String = ""
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct AnotherPerson {
    var firstName: String = ""
    var lastName: String = ""
}

var ap1 = AnotherPerson(firstName: "Kevin", lastName: "Donohue")

var ap2 = ap1

print(ap1)

print(ap2)