import UIKit
import SwiftUI

var greeting = "Hello, playground"

class Car {
    var countOfWheels: Int
    var countOfWindows: Int
    var countOfDoor: Int
    private var color: Color
    private var brandName: String?
    
    private static var countOfCars = 0
    
    init() {
        self.countOfWheels = 4
        self.countOfWindows = 4
        self.countOfDoor = 4
        self.color = .white
        Self.countOfCars += 1
    }
    
    init(brandName: String, color: Color) {
        self.countOfWheels = 4
        self.countOfWindows = 4
        self.countOfDoor = 4
        self.color = color
        self.brandName = brandName
        Self.countOfCars += 1
    }
    
    func changeColor(colorA: Color) {
        print("changeColor start")
        self.color = colorA
        print("changeColor end")
    }
    
    func setBrandName(brandName: String) {
        self.brandName = brandName
    }
    
    func getBrandName() -> String? {
        return self.brandName
    }
    
    static func getCountOfCars() -> Int {
        self.getBrandName()
        self.count
        return Car.countOfCars
    }
}

var car1: Car = Car()
print(car1.countOfWheels)
print(car1.countOfWindows)
car1.changeColor(colorA: .black)

let car2: Car = Car(brandName: "FORD", color: .red)
print(car2.getBrandName())
car2.countOfWheels = 5


car1 = car2
car1.setBrandName(brandName: "XXX")

print(Car.getCountOfCars())

print(car1.getBrandName())
print(car2.getBrandName())
