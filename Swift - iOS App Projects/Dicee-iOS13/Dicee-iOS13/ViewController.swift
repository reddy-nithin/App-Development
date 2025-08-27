//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet acts as a reference to the app elements

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
        
        //Who.What = Value
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped")
        
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
    
        let diceArray = [UIImage(named: "DiceOne"),UIImage(named: "DiceTwo"),UIImage(named: "DiceThree"), UIImage(named: "DiceFour"),UIImage(named: "DiceFive"),UIImage(named: "DiceSix")]
        
        diceImageView1.image = diceArray.randomElement()!
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
    
            }
    
}

