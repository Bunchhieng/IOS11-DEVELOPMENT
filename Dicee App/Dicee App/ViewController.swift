//
//  ViewController.swift
//  Dicee App
//
//  Created by Soth, Bunchhieng on 11/11/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var totalNumberFromDice: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayToastMsg(msg: "Welcome to the rolling dicee app!!!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let num1 = Int(arc4random_uniform(5) + 1)
        let num2 = Int(arc4random_uniform(5) + 1)
        let total = num1 + num2
        diceImageView1.image = UIImage(named: "dice" + String(num1))
        diceImageView2.image = UIImage(named: "dice" + String(num2))
        totalNumberFromDice.text = String(total)
        if total == 6 {
            displayToastMsg(msg: "You got number 6 🤑 Jackpot!!! 🤑")
        }
    }
    
    func displayToastMsg(msg: String) {
        let toastLabel =
            UILabel(frame:
                CGRect(x: self.view.frame.size.width/2 - 150,
                       y: self.view.frame.size.height-100,
                       width: 300,
                       height: 35))
        toastLabel.backgroundColor = UIColor.black
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(toastLabel)
        toastLabel.text = msg
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        UIView.animate(withDuration: 4.0, animations: {
            toastLabel.alpha = 0.0
        })
    }
}

