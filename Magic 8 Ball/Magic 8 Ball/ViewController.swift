//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Soth, Bunchhieng on 11/12/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var askImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollTheImageButton(_ sender: UIButton) {
        randomImage()
    }
    
    func randomImage() {
        askImage.image = UIImage(named: "ball" + String(arc4random_uniform(4) + 1))
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomImage()
    }
}

