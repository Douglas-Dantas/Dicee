//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //values set here act as default values.
    var leftDiceNumber = 0
    var rightDiceNumber = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // using #imageLiteral(
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
        
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5

    }
    
    @IBAction func roll(_ sender: UIButton) {
        
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
        
        // let is used for constants
        let dices = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        diceImageView1.image = dices.randomElement() //opt 1
        diceImageView2.image = dices[Int.random(in: 0...5)] //opt 2
        
        //-- RANDOM COMMANDS --
        // Int.random(...) or Double.random(...)
        
        //-- RANGE OPERATOR --
        //"0...5" equivale a [0,5]
        //"0..<5" equivale a [0,5[
        
    }
    
}

//        print(#file + " " + String(#line))

