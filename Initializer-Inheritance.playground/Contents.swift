//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init() {
        self.firstName = "John"
        self.lastName = "Smith"
    }
}

let bobSmith = Person(firstName: "Bob", lastName: "Smith")

let johnSmith = Person()



class Student: Person {
    let age: Int
    
    init(firstName: String, lastName: String, age: Int){
        self.age = age
        super.init(firstName: firstName, lastName: lastName)
    }
    
    init(age: Int) {
        self.age = age
        super.init()
    }
}

let charlieBrown = Student(firstName: "Charlie", lastName: "Brown", age: 12)

let john = Student(age: 13)



class Employee: Person {
    var yearsOfService = 0
    
    convenience init(firstName: String, lastName: String, yearsOfService: Int) {
        self.init(firstName: firstName, lastName: lastName)
        self.yearsOfService = yearsOfService
    }
}

let employee1 = Employee()

let employee2 = Employee(firstName: "Kevin", lastName: "Donohue", yearsOfService: 9)

let employee3 = Employee(firstName: "Sally", lastName: "Johnson")



