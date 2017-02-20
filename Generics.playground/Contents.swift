//: Playground - noun: a place where people can play

import UIKit

extension Array {
    func pl_map<U>(transform: (T) -> U) -> [U] {
        var transformed = Array<U>()
    }
}

let names = ["Alice", "Bob", "Carol"]
print(names.pl_map() { (name: String) in name.uppercased() })
