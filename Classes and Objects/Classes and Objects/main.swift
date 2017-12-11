//
//  main.swift
//  Classes and Objects
//
//  Created by Soth, Bunchhieng on 12/10/17.
//  Copyright © 2017 Bunchhieng Soth. All rights reserved.
//

import Foundation

print("Hello, World!")

let myCar = Car()
print(myCar.color)
print(myCar.typeOfCar)

let someRichGuyCar = Car(customerChosenColor: "Red")

let selfDrivingCar = SelfDrivingCar()
selfDrivingCar.destination = "1 Hacker Way"
print(selfDrivingCar.drive())
