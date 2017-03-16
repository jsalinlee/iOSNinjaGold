//
//  ViewController.swift
//  NinjaGold
//
//  Created by Jonathan Salin Lee on 3/8/17.
//  Copyright © 2017 Jonathan Salin Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var totalGold = 0
    var earnedGold = 0
    @IBOutlet weak var currentGold: UILabel!
    @IBOutlet weak var farmGold: UILabel!
    @IBOutlet weak var caveGold: UILabel!
    @IBOutlet weak var houseGold: UILabel!
    @IBOutlet weak var casinoGold: UILabel!
    
    
    @IBAction func farmButtonPressed(_ sender: UIButton) {
        earnedGold = Int(arc4random_uniform(11) + 10)
        totalGold += earnedGold
        farmGold.text = "You earned \(earnedGold) gold"
        currentGold.text = "Score: \(totalGold)"
        farmGold.isHidden = false
        caveGold.isHidden = true
        houseGold.isHidden = true
        casinoGold.isHidden = true
    }
    @IBAction func caveButtonPressed(_ sender: UIButton) {
        earnedGold = Int(arc4random_uniform(6) + 5)
        totalGold += earnedGold
        caveGold.text = "You earned \(earnedGold) gold"
        currentGold.text = "Score: \(totalGold)"
        farmGold.isHidden = true
        caveGold.isHidden = false
        houseGold.isHidden = true
        casinoGold.isHidden = true
    }
    @IBAction func houseButtonPressed(_ sender: UIButton) {
        earnedGold = Int(arc4random_uniform(4) + 2)
        totalGold += earnedGold
        houseGold.text = "You earned \(earnedGold) gold"
        currentGold.text = "Score: \(totalGold)"
        farmGold.isHidden = true
        caveGold.isHidden = true
        houseGold.isHidden = false
        casinoGold.isHidden = true
    }
    @IBAction func casinoButtonPressed(_ sender: UIButton) {
        earnedGold = Int(arc4random_uniform(101)) - 50
        totalGold += earnedGold
        if earnedGold < 0{
            casinoGold.text = "You lost \(earnedGold) gold"
        } else{
            casinoGold.text = "You earned \(earnedGold) gold"
        }
        currentGold.text = "Score: \(totalGold)"
        farmGold.isHidden = true
        caveGold.isHidden = true
        houseGold.isHidden = true
        casinoGold.isHidden = false
    }
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        totalGold = 0
        currentGold.text = "Score: \(totalGold)"
        farmGold.isHidden = true
        caveGold.isHidden = true
        houseGold.isHidden = true
        casinoGold.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        farmGold.isHidden = true
        caveGold.isHidden = true
        houseGold.isHidden = true
        casinoGold.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

