//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Soth, Bunchhieng on 12/10/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    
    var destination : String?
    
    override func drive() {
        super.drive()
        
        // Optonal binding
        // destination! = force unwrapping
        if let dest = destination {
            print("I can drive without gas" + dest)
        }
    }
}
