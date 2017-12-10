//
//  ViewController.swift
//  AutoLayoutDemo
//
//  Created by Soth, Bunchhieng on 12/9/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Auto layout
    // Constraint -> Pining (fixed distant edge of the screen), aligment (horizontally or vertically of the screen length)
    // always provide x, y, width and height
    
    // pinning: width = w - 2x, height = h - 2y
    // alightment: x = w/2 - b/2, y = h/2 - a/2
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let square = UIView(frame: CGRect(x: self.view.frame.width/2 - 50, y: self.view.frame.height/2 - 50, width: 100, height: 100))
        square.backgroundColor = UIColor.red
        self.view.addSubview(square)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

