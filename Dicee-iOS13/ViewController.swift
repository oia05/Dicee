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
    
    private let images = [UIImage(named: "DiceOne"), UIImage(named: "DiceTwo"), UIImage(named: "DiceThree"), UIImage(named: "DiceFour"), UIImage(named: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manageEvents()
    }
    
    private func manageEvents() {
        rollButoon.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.rollDice)))
    }
    
    @objc private func rollDice() {
        firstDiceImageView.image = getRandomDice()
        secondDiceImageView.image = getRandomDice()
    }
    
    private func getRandomDice() -> UIImage {
        return images.randomElement()!!
    }


}

