//: Playground - noun: a place where people can play

import UIKit

class DatabaseConnection {
    init() {
        print("New Database is up and running!")
    }
    
    func execute(statement: String) {
        print("EXECUTE: \(statement)")
    }
}

class DataStore {
    lazy var connection = DatabaseConnection()
}

let ds = DataStore()
ds.connection.execute(statement: "SELECT * FROM users")
