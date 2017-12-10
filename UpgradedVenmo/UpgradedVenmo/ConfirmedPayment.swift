//
//  ConfirmedPayment.swift
//  UpgradedVenmo
//
//  Created by Soth, Bunchhieng on 12/10/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import Foundation
import UIKit
import NVActivityIndicatorView

class ConfirmedPayment: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loader = NVActivityIndicatorView(frame: CGRect(x: 50, y: 50, width: 50, height: 50), type: NVActivityIndicatorType.circleStrokeSpin, color: UIColor(red: CGFloat(237 / 255.0), green: CGFloat(85 / 255.0), blue: CGFloat(101 / 255.0), alpha: 1), padding: 10)
        
        loader.startAnimating()
        
        let activityIndicatorView = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        activityIndicatorView.startAnimating()
        print("Hello world")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
