//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let images = ["threeCard", "kingCard","cardBackRed"]
    
   
    
   
    
    @IBOutlet weak var pickACardLabel: UILabel!
    @IBOutlet weak var card0: UIButton!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
         enableCards(true)
           card0.setBackgroundImage(UIImage(named: images[2]), for: UIControl.State.normal)
            card1.setBackgroundImage(UIImage(named: images[2]), for: UIControl.State.normal)
            card2.setBackgroundImage(UIImage(named: images[2]), for: UIControl.State.normal)
       }
    
    @IBAction func cards(_ sender: UIButton) {
        
        let randomCard = Int.random(in: 0...2)
        
        switch sender.tag {
        case 0:
            if sender.tag == randomCard { // 0 == 0
                resultLabel.text = "You win! 🥳"
                sender.setBackgroundImage(UIImage(named: images[1]), for: .normal)
            } else {
                resultLabel.text = "You lose 😢"
                sender.setBackgroundImage(UIImage(named: images[0]), for: UIControl.State.normal)
            }
            enableCards(false)
        case 1:
            if sender.tag == randomCard {
                resultLabel.text = "You win! 🥳"
                sender.setBackgroundImage(UIImage(named: images[1]), for: UIControl.State.normal)
            } else {
                resultLabel.text = "You lose 😢"
                sender.setBackgroundImage(UIImage(named: images[0]), for: UIControl.State.normal)
            }
            enableCards(false)
        case 2:
            if sender.tag == randomCard {
                resultLabel.text = "You win! 🥳"
                sender.setBackgroundImage(UIImage(named: images[1]), for: UIControl.State.normal)
            } else {
                resultLabel.text = "You lose 😢"
                card2.isUserInteractionEnabled = false
                sender.setBackgroundImage(UIImage(named: images[0]), for: UIControl.State.normal)
            }
            enableCards(false)
        default:
            print("Card not found")
            
        }
    }
    
    func enableCards(_ isEnabled: Bool) {
        card1.isEnabled = isEnabled
        card2.isEnabled = isEnabled
        card0.isEnabled = isEnabled
    }
    
}

