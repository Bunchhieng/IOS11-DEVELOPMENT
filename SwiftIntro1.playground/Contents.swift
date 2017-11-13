//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str.underestimatedCount
str.customPlaygroundQuickLook
var testStr = "🧐"
print(str)

var yolo: Int = 6
var total = yolo.signum()
yolo.negate()
yolo.littleEndian
yolo.description
yolo.bigEndian
yolo.words

var newbie = "\(total)"


func noobLearnSwift(num: Int) -> Int {
    if num % 2 != 0 {
        return (num / 2) + 5 - (num * 7) / 5;
    }
    return 0;
}

noobLearnSwift(num: 100000001)

let arr = [1, 2, 3, 4, 5, 6, 7]

func calculatePowerOfTwo(arr: Array<Int>) -> Array<Int> {
    var newArr: Array<Int> = [];
    for num in arr {
        newArr.append(num * num)
    }
    return newArr
}

calculatePowerOfTwo(arr: arr)

func calculateBMI(mass: Double, height: Double) -> Double {
    let bmi =  mass / (height * height)
    if bmi > 25 {
        print("You are overweight")
    } else if (bmi > 18.5 && bmi < 25) {
        print("You have a normal weight")
    } else if bmi < 18.5 {
        print("You are underweight")
    }
    return bmi
}

calculateBMI(mass: 73, height: 1.75)

for num in 1...10 where num % 2 != 0 {
    print(num)
}

for num in 1..<10 where num % 2 == 0 {
    print(num)
}

for num in (1...10).reversed() {
    print(num)
}

func argWithNoName(_ test: Int) {
    print(test)
}

func fibonacci(until n: Int) {
    print(0)
    print(1)
    
    var num1 = 0
    var num2 = 1
    
    for _ in 0...n {
        let num = num1 + num2
        print(num)
        
        num1 = num2
        num2 = num
    }
}

fibonacci(until: 20)
