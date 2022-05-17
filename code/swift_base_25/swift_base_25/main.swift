//
//  main.swift
//  swift_base_25
//
//  Created by nnio on 2022/5/1.
//

import Foundation

print("Hello, World!")

var fruit_11: Fruit = FruitFarm.getFruit(type: "1")
var fruit_12: Fruit = FruitFarm.getFruit(type: "2")

print(fruit_11.getName())
print(fruit_12.getName())

var fruit_21: Fruit = FruitFarm.getApple()
var fruit_22: Fruit = FruitFarm.getOrange()

print(fruit_21.getName())
print(fruit_22.getName())




