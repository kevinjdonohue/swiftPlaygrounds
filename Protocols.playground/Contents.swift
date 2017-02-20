//: Playground - noun: a place where people can play

import UIKit

@objc protocol Tuneable {
    var pitch : Double { get }
    func tuneSharp()
    func tuneFlat()
    @objc optional func transpose(hertz: Double)
}

class Guitar: Tuneable {
    
    internal func tuneFlat() {
        print("decreasing string tension...")
        self.pitch -= 5
    }

    internal func tuneSharp() {
        print("increasing string tension...")
        self.pitch += 5
    }
    
    internal func transpose(hertz: Double) {
        pitch += hertz
    }

    internal var pitch: Double = 440
}

class Saxophone: Tuneable {
    internal func tuneFlat() {
        print("pulling mouthpiece out...")
        self.pitch -= 1
    }

    internal func tuneSharp() {
        print("pushing mouthpiece in...")
        self.pitch += 1
    }

    internal var pitch: Double = 440
}

let guitar = Guitar();

let sax = Saxophone();

let instruments: [Tuneable] = [guitar, sax]

for i in instruments {
    i.tuneSharp()
    i.transpose?(hertz: 20)
}

for j in instruments {
    j.tuneFlat()
    j.transpose?(hertz: 20)
}
