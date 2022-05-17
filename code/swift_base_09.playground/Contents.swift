import UIKit

var greeting = "Hello, playground"

let array1: Array<Int>
let array2: Array<String> = ["a", "b"]
let array3: Array<String> = []
var array4 = [1, 2, 3]
let array5 = [String]()
let array6 = Array<String>()

if array3.isEmpty {
    print("isEmpty")
} else {
    print("is not Empty")
}

array4.append(4)
array4.append(contentsOf: [4, 5, 6])
array4.insert(2, at: 1)
print(array4)

array4.remove(at: 1)
print(array4)

let array7 = array4.filter {
    $0 > 3
}

print(array7)
print(array4)

let firstindex = array4.firstIndex {
    $0 > 3
}

print(firstindex)

array4[2] = 9
print(array4)

array4.replaceSubrange(1...3, with: [7, 8 , 9])

print(array4)

let array: Array<Array<Int>> = [[1,2], [2,3], [3,4]]
print(array)


let tuple: (Int, String, Int) = (1, "5", 3)
print(tuple)
print(tuple.0)
print(tuple.1)
print(tuple.2)

var tuple2: (age: Int, name: String, grade: Int) = (19, "kevin", 3)
print(tuple2.age)
print(tuple2.name)
print(tuple2.grade)

tuple2.name = "Tom"
tuple2.age = 19

print(tuple2)









