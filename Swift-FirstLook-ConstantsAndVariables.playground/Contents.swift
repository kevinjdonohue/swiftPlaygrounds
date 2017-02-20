//: Playground - noun: a place where people can play

import UIKit

let cardsInDeck = 52
var players = 5
players = 4

class StaticPerson {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class VariablePerson {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

let alex = StaticPerson(firstName: "Alex", lastName: "Vollmer")

let numbers = {1;2;3;5;8;13}




//var anotherPerson = alex

//var will = StaticPerson(firstName: "William", lastName: "Sharespeare")


//let me = VariablePerson(firstName: "Alex", lastName: "Vollmer")

//me.firstName = "Kevin"
//me.lastName = "Donohue"
