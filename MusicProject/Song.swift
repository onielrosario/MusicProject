//
//  Song.swift
//  MusicProject
//
//  Created by C4Q on 11/19/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class Song {
    var name: String
    var artist: String
    var file: String
    var volumeValue: Float
    var image: UIImage
    init(name: String, artist: String, file: String, volumeValue: Float = 1, image: UIImage) {
        self.name = name
        self.artist = artist
        self.file = file
        self.volumeValue = volumeValue
        self.image = image
    }
    static var allSongs = [Song.init(name: "Never Gonna Give You Up", artist: "Rick Astley", file: "rickRoll", image: UIImage.init(named: "rick")!),
                           Song.init(name: "Bohemian Rhapsody", artist: "Queen", file: "queen", image: UIImage.init(named: "queen")!),
                           Song.init(name: "Savior", artist: "Rise Against", file: "savior", image: UIImage.init(named: "rise")!),
                           Song.init(name: "Classic Man Remix", artist: "Jidenna", file: "classicMan", image: UIImage.init(named: "classic")!),
                           Song.init(name: "Lean On", artist: "Major Lazer", file: "leanOn", image: UIImage.init(named: "major")!),
                           Song.init(name: "Feels Like Summer", artist: "Childish Gambino", file: "summer", image: UIImage.init(named: "childish")!),
                           Song.init(name: "Elevate", artist: "Drake", file: "elevate", image: UIImage.init(named: "drake")!),
                           Song.init(name: "Wonderwall", artist: "Oasis", file: "wonderwall", image: UIImage.init(named: "oasis")!),
                           Song.init(name: "Slide", artist: "Calvin Harris", file: "Slide", image: UIImage.init(named: "slide")!),
                           Song.init(name: "Feelings", artist: "Mayorkun", file: "feelings", image: UIImage.init(named: "feelings")!),
                           Song.init(name: "SICKO MODE", artist: "Travis Scott", file: "sickoMode", image: UIImage.init(named: "sicko")!),
                           Song.init(name: "Crack Rock", artist: "Frank Ocean", file: "crackRock", image: UIImage.init(named: "orange")!),
                           Song.init(name: "Get Away", artist: "The Internet", file: "getAway", image: UIImage.init(named: "internet")!),
                           Song.init(name: "Overtime", artist: "KNOWER", file: "overtime", image: UIImage.init(named: "knower")!),
                           Song.init(name: "Creating God", artist: "Avenged Sevenfold", file: "creatingGod", image: UIImage.init(named: "avenged")!),
                           Song.init(name: "Miss You Bad", artist: "Mr Eazi", file: "missYouBad", image: UIImage.init(named: "eazi")!),
                           Song.init(name: "Always", artist: "Saliva", file: "always", image: UIImage.init(named: "saliva")!),
                           Song.init(name: "Movin' Too Fast", artist: "Migos", file: "movinTooFast", image: UIImage.init(named: "migos")!),
                           Song.init(name: "Down With The Sickness", artist: "Disturbed", file: "down", image: UIImage.init(named: "disturbed")!),
                           Song.init(name: "Old Man", artist: "Niel Young", file: "oldMan", image: UIImage.init(named: "niel")!),
                           Song.init(name: "R.I.P Screw", artist: "Travis Scott", file: "ripScrew", image: UIImage.init(named: "sicko")!)
    ]
}
