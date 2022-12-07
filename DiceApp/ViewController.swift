//
//  ViewController.swift
//  DiceApp
//
//  Created by Ali Ghazanfar on 07/12/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceOneImage: UIImageView!
    @IBOutlet weak var diceTwoImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceOneImage.image = UIImage(named: "diceSix")
        diceOneImage.image = UIImage(named: "diceSix")
        
    }
    
    @IBAction func SwitchforOneDice(_ sender: UISwitch) {
        
        if (sender.isOn == true){
            diceOneImage.alpha = 1.0
        }
        else{
            diceOneImage.alpha = 0.0
            
        }
    }
    
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [UIImage(named: "diceOne"),
                         UIImage(named: "diceTwo"),
                         UIImage(named: "diceThree"),
                         UIImage(named: "diceFour"),
                         UIImage(named: "diceFive"),
                         UIImage(named: "diceSix")]
       
        diceOneImage.image = diceArray[Int.random(in: 0...5)]
        diceTwoImage.image = diceArray[Int.random(in: 0...5)]
    }
    
}

