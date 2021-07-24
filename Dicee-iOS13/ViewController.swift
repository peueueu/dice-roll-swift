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
    
    @IBOutlet weak var callToActionRoll: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceSix")
        diceImageViewOne.alpha = 0.5
        // Image literal allows me to low code the image change val
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceTwo")
    }
    
    

}

