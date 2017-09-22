//
//  SongTableViewCell.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/20/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var albumCover: UIImageView!
    @IBOutlet weak var nameOfSong: UILabel!
    @IBOutlet weak var nameOfArtist: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
