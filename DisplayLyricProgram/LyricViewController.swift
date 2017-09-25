//
//  LyricViewController.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/22/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import UIKit

class LyricViewController: UIViewController {
    
    var currentSong : LyricModel!
    var submittedSection : Int?
    var submittedRow : Int?
    var submittedSongList : [Array<LyricModel>]?

    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var songLyrics: UILabel!
    @IBOutlet weak var navTitle: UINavigationItem!
    
    func loadValues() {
     currentSong = submittedSongList![submittedSection!][submittedRow!]
        songName.text = "\(currentSong.name ?? "") - \(currentSong.artist ?? "")"
        navTitle.title = "\(currentSong.name ?? "") - \(currentSong.artist ?? "")"
        songLyrics.text = currentSong.lyrics
        if let url = currentSong.imageURL {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                let urlContents = try? Data(contentsOf: url)
                if let imageData = urlContents, url == self?.currentSong.imageURL {
                    DispatchQueue.main.async {
                        self?.albumImage.image = UIImage(data: imageData)
                        self?.spinner.stopAnimating()
                    }
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadValues()
        // Do any additional setup after loading the view.
    }
}
