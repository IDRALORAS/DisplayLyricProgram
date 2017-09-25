//
//  LyricModel.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/20/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import Foundation

struct LyricModel {
    
    var name : String?
    var artist : String?
    var lyrics : String?
    var imageURL : URL?
    
    init(name: String, artist: String, lyrics: String, url: URL?){
        self.name = name
        self.artist = artist
        self.lyrics = lyrics
        self.imageURL = url
        
    }
    
}
