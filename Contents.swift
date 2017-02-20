//: Playground - noun: a place where people can play

import UIKit

let names = ["Kevin", "Chris", "Kate", "Kim"]

names[0]

names[1..<3]

names[1...2]

names[1...1]

var colors = ["red", "green", "blue"]

let longColors = colors.filter() { $0.lengthOfBytes(using: String.Encoding.utf8) > 3 }

longColors

let colorLengths = colors.map() { $0.lengthOfBytes(using: String.Encoding.utf8) }

colorLengths

let totalLength = colorLengths.reduce(0, { $0 + $1 })

totalLength

colors.append("orange")

colors += ["purple"]

colors.insert("brown", at: 2)

colors[2] = "magenta"

colors

let sortedColors = colors.sorted()

sortedColors

colors.sort()

colors

let reversedColors = colors.reversed()

reversedColors

colors.reverse()

colors

colors.remove(at: 0)

colors

colors.removeSubrange(0...2)

colors

colors.count

colors.capacity

colors.removeAll(keepingCapacity: true)

colors

colors.count

colors.capacity






