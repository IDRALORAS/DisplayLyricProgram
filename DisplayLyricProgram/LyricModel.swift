//
//  LyricModel.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/20/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import Foundation

struct LyricModel {
    
    var songName : String?
    var songArtist : String?
    var songLyrics : String?
    var songImageURL : URL?
    
    init(name songN: String, artist songA: String, lyrics songL: String, url songI: URL?){
        songName = songN
        songArtist = songA
        songLyrics = songL
        songImageURL = songI
    }
    
}
