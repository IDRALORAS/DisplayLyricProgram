//
//  AddScreenViewController.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/22/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import UIKit

class AddScreenViewController: UIViewController {
    
    @IBOutlet weak var songName: UITextField!
    @IBOutlet weak var songArtist: UITextField!
    @IBOutlet weak var albumURL: UITextField!
    @IBOutlet weak var lyrics: UITextView!
    var submittedSongList : [Array<LyricModel>]?
    var lastViewController : SongsTableViewController?
    
    func addLyricModel() {
        let insertedVal = LyricModel(name: songName.text!, artist: songArtist.text!, lyrics: lyrics.text, url: URL(string: albumURL.text!))
        submittedSongList![0].append(insertedVal)
        lastViewController?.songList = submittedSongList!
    }
    
    func displayErrorMessage() {
        let alert = UIAlertController(title: "Invalid Input", message: "Not all inputs have been filled in!", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func textFieldsAreNotEmpty() -> Bool {
        return songName.text! != ""  && songArtist.text! != "" && albumURL.text! != "" && lyrics.text! != ""
    }
    
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        if textFieldsAreNotEmpty(){
            addLyricModel()
            self.dismiss(animated: true, completion: nil)
        }
        else {
            displayErrorMessage()
        }
    }
}
