//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var label: UILabel!
    
    /*let softTime = 5
    let mediumTime = 7
    let hardTime = 12*/
    
    let eggTimes = ["Soft":3, "Medium":4, "Hard": 8]
    
   var totalTime = 0
    var player: AVAudioPlayer!
    var secondsPassed = 0
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        timer.invalidate()
        
        progressBar.progress = 0.0
        secondsPassed = 0
        label.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        /*if hardness == "soft" {
            print("5")
        }
        else if hardness ==  "medium"{
            print("7")
        }
        else {
            print("12")
        }*/
        
       /* switch hardness {
        case "Soft":
            print(eggTimes["Soft"]!)
            
        case "Medium":
            print(eggTimes["Medium"]!)
        
        case "Hard":
            print(eggTimes["Hard"]!)
            
        default:
            print("ERROR")
        } */

    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = percentageProgress
            
        }
        
        else {
            timer.invalidate()
            label.text = "DONE! "
                        
                let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
                player = try! AVAudioPlayer(contentsOf: url!)
                player.play()
        }
    }

}
