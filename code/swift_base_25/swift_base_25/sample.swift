//
//  sample.swift
//  swift_base_25
//
//  Created by nnio on 2022/5/1.
//

import Foundation

protocol Fruit {
    func getName() -> String
    func getColor() -> String
}

class FruitFarm {
    class func getFruit(type: String) -> Fruit {
        if "1" == type {
            return Apple()
        } else {
            return Orange()
        }
    }
    
    class func getApple() -> some Fruit {
        return Apple()
    }
    
    class func getOrange() -> some Fruit {
        return Orange()
    }
    
}

fileprivate class Apple: Fruit {
    private var name: String
    private var color: String
    
    init() {
        self.name = "apple"
        self.color = "red"
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getColor() -> String {
        return self.color
    }
    
    func getAppleName() {
        print("AppleName")
    }
}

fileprivate class Orange: Fruit {
    private var name: String
    private var color: String
    
    init() {
        self.name = "organge"
        self.color = "organge"
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getColor() -> String {
        return self.color
    }
    
    func getOrangeName() {
        print("OrangeName")
    }
}
