//: Playground - noun: a place where people can play

import UIKit

var name: String?
var job: String!
var city: String

name = "Alex"

job = "iOS Developer"

city = "Seattle"

//Optional String Example
if(name != nil) {
    print("optional name is \(name)")  //optional string
    print("name is \(name!)")  //! operator force unwraps the string; no longer optional
}
else {
    print("name is nil")
}

//Implicitly Unwrapped Optional String
if(job != nil) {
    print("job is \(job)")  //implicitly unwrapped optional string
}
else {
    print("job is nil")
}

//Compiler will error if city isn't defined
print("City is \(city)")


//Optional Binding Syntax - Optional String
if let theName = name {
    print("Name is \(theName)")
}
else {
    print("name is nil")
}

//Optional Binding Syntax - Implicitly Unwrapped Optional
if let theJob = job {
    print("Job is \(job)")
}
else {
    print("Job is nil")
}

//Nil-Coalescing Operator Syntax - to use an optional's value or an alternative
let finalName = (name ?? "no name")

let finalJob = (job ?? "no job")

print("Name: \(finalName)")

print("Job: \(finalJob)")

