import UIKit

var greeting = "Hello, playground"

var setA: Set<String>

var setB: Set<String> = Set<String>()

var setC: Set<String> = Set<String>(arrayLiteral: "str1", "str2")

var setD = Set<String>(arrayLiteral: "str1", "str2")

var setE: Set = [2, 3, 5 ,7, 8]

var primes: Set = Set(setE)

setE.insert(99)
setE.insert(100)
print(setE)

//setE.removeAll()
setE.remove(100)
print(setE)

let setFF = setE.filter {
    $0 > 5
}

print(setFF)

var setAA: Set = [2, 3, 5, 7]
var setBB: Set = [5, 7, 11, 13]

let intersection = setAA.intersection(setBB)
print(intersection)

let sysmertricDiff = setAA.symmetricDifference(setBB)
print(sysmertricDiff)

let union = setAA.union(setBB)
print(union)

//dic
let dicA: Dictionary<String, String>
let dicB: Dictionary<String, String> = Dictionary<String, String>()
let dicC = Dictionary<String, String>()
let dicD = [String: String]()
var dicE = ["key1": "val1", "key2": "val2"]

let keys = dicE.keys
for k in keys {
    print(k)
}

for k in keys {
    print(dicE[k])
}

let values = dicE.values

for v in values {
    print(v)
}

dicE["key3"] = "val3"
print(dicE)

dicE["key2"] = "val2222"
print(dicE)

let index = dicE.firstIndex(where: {
    k, v in
    return k == "key2"
})
print(index!)
dicE.remove(at: index!)
print(dicE)
