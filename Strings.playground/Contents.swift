//: Playground - noun: a place where people can play

import UIKit

var greeting = "Hello, playground"
var nothing = ""

greeting.isEmpty
nothing.isEmpty
"    ".isEmpty

greeting.hasPrefix("Hello")
greeting.hasPrefix("Banana")
nothing.hasPrefix("Hello")
nothing.hasPrefix("")

greeting.hasSuffix("ground")
greeting.hasSuffix("Ground")
nothing.hasSuffix("ground")
nothing.hasSuffix("Ground")

var answer = "42"
let answerInt = Int(answer)

let name = "Alex" + " " + "Vollmer"

let a: Character = "A"
let l: Character = "l"

let name1: String = "Kevin"
let name2: String = "Kevin"

if(name1 == name2) {
    print("match")
}

let name3 = "foo"

if(name1 != name3){
    print("not a match")
}

"/Users/alex/Desktop/".components(separatedBy: "/")

let mutable = NSMutableString(string: "Hello")
mutable.append(" There!")
print(mutable)