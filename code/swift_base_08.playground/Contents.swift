import UIKit

var greeting = "Hello, playground"

let range1: ClosedRange<Int> = 1...100
let range2: Range<Int> = 1..<100
let range3: PartialRangeThrough<Int> = ...100
let range4: PartialRangeUpTo<Int> = ..<100
let range5: PartialRangeFrom = 1...

let range6: ClosedRange<Float> = 1.05...100.99

range6.contains(1.07)

for i in range1 {
    print(i)
}

var a: Array<String> = ["a", "b", "c", "d", "e"]

for ch in a[1...3] {
    print(ch)
}

range1.lowerBound
range1.upperBound
range2.lowerBound
range2.upperBound

let range7: Range<Float> = 10..<10
range7.isEmpty


