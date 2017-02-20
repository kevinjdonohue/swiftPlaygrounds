//: Playground - noun: a place where people can play

import UIKit

protocol Named {
    var name: String { get }
}

struct Person: Named {
    var name: String { return "John Doe" }
}

let p = Person()
p.name

enum Suit: String, Named {
    case Hearts = "hearts"
    case Diamonds = "diamonds"
    case Clubs = "clubs"
    case Spades = "spades"
    
    var name: String { return self.rawValue }
}

let hearts = Suit.Hearts
hearts.name

let spades = Suit.Spades
spades.name

let namedThings: [Named] = [hearts, spades, p]

print(namedThings.map() { $0.name })

let things: [Any] = [hearts, spades, p, false, "banana"]

for thing in things {
    print("thing is \(thing)")
    if thing is Named {
        print("yes")
    } else {
        print("no")
    }
}