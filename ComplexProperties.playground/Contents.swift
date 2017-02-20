//: Playground - noun: a place where people can play

import UIKit

class Calendar {
    var frenchMonths: [String] = {
        print("Calculating French months...")
        let df = DateFormatter()
        df.locale = Locale(identifier: "fr_FR")
        return df.monthSymbols.map() { $0 as String }
    }()
}

let cal = Calendar()

cal.frenchMonths
cal.frenchMonths
cal.frenchMonths