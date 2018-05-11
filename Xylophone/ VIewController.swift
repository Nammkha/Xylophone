//
//  ViewController.swift
//  Xylophone
//
//  Created by Namkha Bhum 02/04/2018.
//  Copyright © 2016 Namkha Bhhum. All rights reserved.


import UIKit
import AVFoundation
//import AudioToolbox


class ViewController: UIViewController {
    
        var audioPlayer : AVAudioPlayer!
        var selectedSoundFileName: String = ""
        let soundArray = ["note1","note2", "note3", "note4", "note5", "note6", "note7"]
    
        override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    
    
        @IBAction func notePressed(_ sender: UIButton) {
    
    
            selectedSoundFileName = soundArray[sender.tag - 1]
            print(selectedSoundFileName)
            playSound()
        }
        func playSound() {
            let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
    
            do {
    
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            }
            catch {
                print(error)
            }
            audioPlayer.play()
    
        }
}



/*
 this is one for playing a sound in Swift 3 with AVFoundation file
 
 let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
 
 do {
 player = try AVAudioPlayer(contentsOf: url)
 guard let player = player else { return
 }
 player.prepareToPlay()
 player.play()
 }
 catch {
 print("Error loading file")
 }
 */

/*
 this is an another solusion for playing An audio sound in Swift 3 in AudioToolBox file
 
 if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
 var mySound: SystemSoundID = 0
 AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
 // Play
 AudioServicesPlaySystemSound(mySound);
 }
 */


