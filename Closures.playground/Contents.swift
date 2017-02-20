//: Playground - noun: a place where people can play

import UIKit

//Closures

let names = ["Al", "Ann", "Alex", "Alice", "Audrey"]

//Full syntax
let filtered = names.filter({(name: String) -> Bool in
    return name.hasPrefix("Al")
})

//Slightly shorter syntax - type inference, drop parens, drop return keyword
let filtered2 = names.filter({name -> Bool in
    name.hasPrefix("Al")
})

//Even shorter - use the $ operator to access the first argument
let filtered3 = names.filter({$0.hasPrefix("Al")})

print(filtered3)


let filtered4 = names.filter() { $0.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 3 }

print(filtered4)

func isShortName(name: String) -> Bool {
    return name.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 4
}

print(names.filter(isShortName))

func namesWithMaxLength(max: Int = 3) -> (String) -> Bool {
    return {
        (name: String) in
        return name.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < max
    }
}

print(names.filter(namesWithMaxLength(4)))

print(names.filter(namesWithMaxLength()))
