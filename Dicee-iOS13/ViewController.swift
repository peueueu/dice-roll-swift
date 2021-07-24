//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView!
    //IBOutlet allows me to reference a UI element.
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var points = 0
    var leftDiceIndex = 0
    var rightDiceIndex = 0

    @IBAction func callToActionRoll(_ sender: UIButton) {
        
        // Instead of doing a random number generator, we can use Array.randomElement(), to pick a random element inside the array...
        let diceArray =  [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        leftDiceIndex = Int.random(in: 0..<6)
        rightDiceIndex = Int.random(in: 0..<6)
        
        
        print("@left: \(leftDiceIndex), @right:\(rightDiceIndex)")
        
        diceImageViewOne.image = diceArray[leftDiceIndex]
        diceImageViewTwo.image = diceArray[rightDiceIndex]
        
        if(leftDiceIndex == rightDiceIndex){
            points += 1
            
            scoreLabel.text = "Score: \(points)"
        }
    }
    

}

