//: Playground - noun: a place where people can play

import UIKit

class Person: Comparable, Equatable {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
    
    static func < (lhs: Person, rhs: Person) -> Bool {
        if (lhs.lastName == rhs.lastName) {
            return lhs.firstName == rhs.firstName
        }
        else {
            return lhs.lastName == rhs.lastName
        }
    }
}

let evh = Person(firstName: "Eddie", lastName: "Van Halen")
let jp = Person(firstName: "Jimmy", lastName: "Page")
let jh = Person(firstName: "Jimi", lastName: "Hendrix")
let sv = Person(firstName: "Steve", lastName: "Vai")

var guitarists = [evh, jp, jh, sv]

guitarists.sort()

var sortedGuitarists = guitarists.sorted()

