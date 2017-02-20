//: Playground - noun: a place where people can play

import UIKit

class Person: Equatable, Comparable, CustomStringConvertible {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
    }
    
    static func <(lhs: Person, rhs: Person) -> Bool {
        if (lhs.lastName == rhs.lastName) {
            return lhs.firstName < rhs.firstName
        }
        else {
            return lhs.lastName < rhs.lastName
        }
    }
    
    var description: String { get { return "foo" } }
}

let will = Person(firstName: "William", lastName: "Shakespeare")

let liz = Person(firstName: "Elizabeth", lastName: "Tudor")

will == liz

will != liz

will < liz

liz < will

liz < Person(firstName: "Henry", lastName: "Tudor")

will.description


