//: Playground - noun: a place where people can play

import UIKit

protocol MediaType {
    var contentType: String { get }
}

class Movie {
    enum Resolution: String {
        case TenEightyProgressive = "1080p"
        case SevenTwentyProgressive = "720p"
        case TenEightyInterfaced = "1080i"
    }
    
    var resolution: Resolution
    
    init(resolution: Resolution) {
        self.resolution = resolution
    }
}

class MPEG4Movie: Movie, MediaType {
    var contentType: String { return "video/mp4" }
}

class QuicktimeMovie: Movie, MediaType {
    var contentType: String { return "video/quicktime" }
}

class Audio {
    var bitRate: Int
    init(bitRate: Int) {
        self.bitRate = bitRate
    }
}

class MP3: Audio, MediaType {
    var contentType: String { return "audio/mpeg" }
}

class Ogg: Audio, MediaType {
    var contentType: String { return "audio/ogg" }
}


let m1 = MPEG4Movie(resolution: .TenEightyProgressive)
let m2 = QuicktimeMovie(resolution: .SevenTwentyProgressive)
let m3 = QuicktimeMovie(resolution: .TenEightyInterfaced)

let a1 = MP3(bitRate: 128)
let a2 = Ogg(bitRate: 128)
let a3 = MP3(bitRate: 256)

let stuff = [m1, a3, m2, a2, m3, a1, "Foobar", 123, false] as [Any]

for thing in stuff {
    if thing is MediaType {
        print((thing as! MediaType).contentType)
        print("     ")
        if let movie = thing as? Movie {
            print("Movie resolution is \(movie.resolution.rawValue)")
        }
        print("     ")
    } else {
        print("Unknown media: \(thing)")
    }
}
