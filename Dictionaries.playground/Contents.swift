//: Playground - noun: a place where people can play

import UIKit

var capitals = [
    "United States" : "Washington D.C.",
    "Italy" : "Rome",
    "Mexico" : "Mexico City",
    "Foo" : "Bar"
]

capitals["United States"]

capitals["Kenya"]

if let rome = capitals["Italy"] {
    print(rome)
}

capitals["United Kingdom"] = "London"

capitals

let oldCapital = capitals.updateValue("Milan", forKey: "Italy")

oldCapital

capitals

capitals.count

let anotherOldCapital = capitals.removeValue(forKey: "United States")

capitals.removeValue(forKey: "France")

let keys = capitals.keys

let values = capitals.values

Array(keys)

Array(values)

//how can you remove an entire entry from a dictionary?
//let removed = capitals.remove(at: capitals["Foo"])
