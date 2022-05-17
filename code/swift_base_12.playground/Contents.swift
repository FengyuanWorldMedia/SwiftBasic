import UIKit

var greeting = "Hello, playground"



struct Student {
    var name: String
    var age: Int
    var grade: Int
    var address: String
}

let student = Student(name: "Tom", age: 18, grade: 3, address: "address")
let ageA = student.age
print(ageA)

struct StudentB {
    var name: String
    var age: Int
    var grade: Int
    var address: String
    
    init() {
        self.name = "Tom"
        self.age = 20
        self.grade = 4
        self.address = "addressB"
    }
}

var studentb = StudentB()
studentb.age = 21
let ageB = studentb.age
print(ageB)

struct StudentC {
    var name: String
    var age: Int
    var grade: Int
    var address: String
    var hobbies = ["hobby1","hobby2","hobby3","hobby4"]
    
    init() {
        self.name = "Tom"
        self.age = 20
        self.grade = 4
        self.address = "addressB"
    }
    
    subscript(hobbyIndex: Int) -> String {
        return hobbies[hobbyIndex]
    }
    
    mutating func changeGrade(grade: Int) {
        self.grade = grade
    }
}


var studentc = StudentC()
let hobby = studentc[1]
print(hobby)

var studentd = studentc
print(studentd.grade)
print(studentc.grade)

studentc.grade = 5
studentc.changeGrade(grade: 6)
print(studentd.grade)
print(studentc.grade)




