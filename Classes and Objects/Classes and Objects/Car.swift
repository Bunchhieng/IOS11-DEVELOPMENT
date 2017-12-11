//
//  Car.swift
//  Classes and Objects
//
//  Created by Soth, Bunchhieng on 12/10/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    // Designated initializer
    init() {
    }
    
    // Convenient initializer
    convenience init(customerChosenColor: String) {
        self.init()
        color = customerChosenColor
    }
    
    func drive() {
        print("Car is moving...")
    }
    
    var color = "Black"
    var numOfSeats = 5
    var typeOfCar : CarType = .Coupe
}
