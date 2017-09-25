//
//  SongsTableViewController.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/20/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {
    var selectedSection = 0
    var selectedRow = 0

    typealias LyricModelSection = Array<LyricModel>
    
    var songList = [LyricModelSection]() {
        didSet{
            tableView.reloadData()
        }
    }
    
    private func loadSampleSongs(dict: NSDictionary) {
        var tempSongList = [LyricModel]()
        let lilUzi = LyricModel(name: "XO Tour Llif3", artist: "Lil Uzi Vert", lyrics: dict.object(forKey: "XOTourLife") as! String, url: URL(string: "http://thefader-res.cloudinary.com/private_images/w_640,c_limit,f_auto,q_auto:eco/Screen_Shot_2017-08-24_at_11.55.48_AM_bulwhv/lil-uzi-vert-luv-is-rage-2-release-date-album-cover.jpg"))
        tempSongList.append(lilUzi)
        let jCole = LyricModel(name: "A Tale of 2 Citiez", artist: "J. Cole", lyrics: dict.object(forKey: "ATaleOf2Citiez") as! String, url: URL(string: "https://target.scene7.com/is/image/Target/17047837_Alt01?wid=520&hei=520&fmt=pjpeg"))
        tempSongList.append(jCole)
        let kLamar = LyricModel(name: "Sing About Me, I'm Dying Of Thirst", artist: "Kendrick Lamar", lyrics: dict.object(forKey: "SingAboutMeDyingOfThrist") as! String, url: URL(string: "http://www.hotnewhiphop.com/public/userfiles/2012/09/kendrick-lamar-good-kid-maad-city.jpg"))
        tempSongList.append(kLamar)
        songList.insert(tempSongList, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "myProperties", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        loadSampleSongs(dict: dict!)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return songList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songList[section].count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSection = indexPath.section
        selectedRow = indexPath.row
        performSegue(withIdentifier: "submissionSegue", sender: nil)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifer = "ANewCell"

        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer, for: indexPath) as? SongTableViewCell else {
            fatalError("The dequeued cell is not an instance of SongTableViewCell.")
        }

        // Configure the cell...
        let song = songList[0][indexPath.row]
        cell.nameOfSong.text = song.name
        cell.nameOfArtist.text = song.artist
        var image : UIImage?
        if let url = song.imageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                image = UIImage(data: imageData)
            }
        }
        cell.albumCover.image = image

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationController = segue.destination as? LyricViewController{
            destinationController.submittedSection = selectedSection
            destinationController.submittedRow = selectedRow
            destinationController.submittedSongList = songList
        }
        else if let destinationController = segue.destination as? UINavigationController{
            if let trueDestination  = destinationController.topViewController as? AddScreenViewController {
                trueDestination.submittedSongList = songList
                trueDestination.lastViewController = self
            }
        }
    }

}
