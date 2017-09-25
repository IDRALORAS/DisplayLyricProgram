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
        songName.text = "\(currentSong.songName ?? "") - \(currentSong.songArtist ?? "")"
        navTitle.title = "\(currentSong.songName ?? "") - \(currentSong.songArtist ?? "")"
        songLyrics.text = currentSong.songLyrics
        if let url = currentSong.songImageURL {
        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
                let urlContents = try? Data(contentsOf: url)
                if let imageData = urlContents, url == self?.currentSong.songImageURL {
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
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
