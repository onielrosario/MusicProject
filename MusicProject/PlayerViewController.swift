//
//  PlayerViewController.swift
//  MusicProject
//
//  Created by Oniel Rosario on 11/19/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit
import AVFoundation


class PlayerViewController: UIViewController {
    
    @IBOutlet weak var songPicture: UIImageView!
    @IBOutlet weak var songtitle: UILabel!
    @IBOutlet weak var songArtist: UILabel!
    @IBOutlet weak var songVolume: UISlider!
    @IBOutlet weak var nextSongButton: UIButton!
    var song: Song?
    var songs: [Song]?
    var player = AVAudioPlayer()
    var currentSliderValue: Float = 1.0
    var indexSong = 0
    
    override func viewWillDisappear(_ animated: Bool) {
        song?.volumeValue = currentSliderValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        playSong()
    }
    
    private func setUp () {
        if song != nil {
            songPicture.image = song!.image
            songtitle.text = song!.name
            songArtist.text = song!.artist
            songVolume.value = song!.volumeValue
            currentSliderValue = song!.volumeValue
        }
        if songs != nil {
            songPicture.image = songs![0].image
            songtitle.text = songs![0].name
            songArtist.text = songs![0].artist
            songVolume.value = songs![0].volumeValue
            currentSliderValue = songs![0].volumeValue
            nextSongButton.isHidden = false
        }
    }
    
    @IBAction func volumeChanged(_ sender: UISlider) {
        currentSliderValue = sender.value
        player.volume = currentSliderValue
    }
    private func playSong() {
        if song != nil {
            guard let fileURL = Bundle.main.url(forResource: song?.file, withExtension: "mp3") else {return}
            do {
                player = try AVAudioPlayer.init(contentsOf: fileURL)
                if let volume = song?.volumeValue {
                    player.volume = volume
                }
            } catch {
                print(error)
            }
        }
        if songs != nil {
            guard let fileURL = Bundle.main.url(forResource: songs![0].file, withExtension: "mp3") else {return}
            do {
                player = try AVAudioPlayer.init(contentsOf: fileURL)
                player.volume = songs![0].volumeValue
                player.play()
            } catch {
                print(error)
            }
        }
    }
    
    @IBAction func nextSong(_ sender: UIButton) {
        if songs != nil {
            var songToSet: Song?
            if indexSong < songs!.count - 1 {
                indexSong += 1
                songToSet = songs![indexSong]
            } else if indexSong == songs!.count - 1 {
                songToSet = songs![indexSong]
                indexSong += 1
            } else {
                indexSong = 0
                songToSet = songs![indexSong]
            }
            songPicture.image = songToSet!.image
            songtitle.text = songToSet!.name
            songArtist.text = songToSet!.artist
            songVolume.value = songToSet!.volumeValue
            currentSliderValue = songToSet!.volumeValue
            
            guard let fileURL = Bundle.main.url(forResource: songToSet!.file, withExtension: "mp3") else {return}
            do {
                player = try AVAudioPlayer.init(contentsOf: fileURL)
            player.volume = songToSet!.volumeValue
                    player.play()
            } catch {
                print(error)
            }
        }
    }
}


