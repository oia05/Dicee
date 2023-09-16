//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstDiceImageView: UIImageView!
    @IBOutlet weak var secondDiceImageView: UIImageView!
        
    @IBOutlet weak var rollButoon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        manageEvents()
    }
    
    private func manageEvents() {
        rollButoon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.rollDice)))
    }
    
    private func getRandomDiceNumber() -> Int {
        return Int.random(in: 1...6)
    }
    
    @objc private func rollDice() {
        let firstDiceNumber = getRandomDiceNumber()
        let secondDiceNumber = getRandomDiceNumber()
        firstDiceImageView.image = mapNumberToImage(number: firstDiceNumber)
        secondDiceImageView.image = mapNumberToImage(number: secondDiceNumber)
    }
    
    private func mapNumberToImage(number: Int) -> UIImage? {
        let diceImage: UIImage?
        switch number {
        case 1:
            diceImage = UIImage(named: "DiceOne")
        case 2:
            diceImage = UIImage(named: "DiceTwo")
        case 3:
            diceImage = UIImage(named: "DiceThree")
        case 4:
            diceImage = UIImage(named: "DiceFour")
        case 5:
            diceImage = UIImage(named: "DiceFive")
        case 6:
            diceImage = #imageLiteral(resourceName: "DiceSix")
        default:
            diceImage = nil
        }
        return diceImage
    }


}

