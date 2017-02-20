//: Playground - noun: a place where people can play

import UIKit

//Functions

func say(phrase: String) {
    print(phrase)
}

say("Boo!")

func say(phrase p: String, times t: Int) {
    for _ in 0...t {
        say(p)
    }
}

say(phrase: "Hello There!", times: 10)