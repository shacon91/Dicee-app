//
//  ViewController.swift
//  Dicee
//
//  Created by Shane Conway on 15/05/2018.
//  Copyright © 2018 Shane Conway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6",]

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[randomDice1])
        diceImage2.image = UIImage(named: diceArray[randomDice2])
    }
    


}

