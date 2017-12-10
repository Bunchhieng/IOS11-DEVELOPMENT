//
//  KeypadController.swift
//  UpgradedVenmo
//
//  Created by Siharany on 12/10/17.
//  Copyright © 2017 Siharany. All rights reserved.
//

import UIKit

class KeypadController: UIViewController {
    @IBOutlet weak var numLabel: UILabel!
    
    var num: String = "$"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numLabel.text = num
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel(val: String) {
        numLabel.text = val
    }
    
    @IBAction func numKeypad(_ sender: UIButton) {
        if sender.tag == 1 {
            num.append("1")
            print(num)
        } else if sender.tag == 2 {
            num.append("2")
        } else if sender.tag == 3 {
            num.append("3")
        } else if sender.tag == 4 {
            num.append("4")
        } else if sender.tag == 5 {
            num.append("5")
        } else if sender.tag == 6 {
            num.append("6")
        } else if sender.tag == 7 {
            num.append("7")
        } else if sender.tag == 8 {
            num.append("8")
        } else if sender.tag == 9 {
            num.append("9")
        } else if sender.tag == 10 {
            num.append(".")
        } else if sender.tag == 11 {
            num.append("0")
        } else if sender.tag == 12 {
            num.removeLast()
        }
        updateLabel(val: num)
    }
}
