//
//  ViewController.swift
//  UpgradedVenmo
//
//  Created by Soth, Siharany Nong on 12/10/17.
//  Copyright © 2017 Siharany Nong. All rights reserved.
//

import UIKit
import Material

class ViewController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        prepareToolbar()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController {
    fileprivate func prepareToolbar() {
        guard let tc = toolbarController else {
            return
        }
        
        tc.toolbar.title = "Material"
        tc.toolbar.detail = "Build Beautiful Software"
    }
}

