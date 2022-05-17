//: [Previous](@previous)

import Foundation
 
let string = "Google, Amazon, Facebook, Apple"
 
let pattern = "A[a-z]+"

 
let regex = try! NSRegularExpression(pattern: pattern, options: [])
 
let results = regex.matches(in: string, options: [], range: NSRange(0..<string.count))

 
for result in results {
    for i in 0..<result.numberOfRanges {
        let start = string.index(string.startIndex, offsetBy: result.range(at: i).location)
        let end = string.index(start, offsetBy: result.range(at: i).length)
        let text = String(string[start..<end])
        print(text)
    }
}
