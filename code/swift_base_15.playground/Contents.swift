import UIKit

var greeting = "Hello, playground"


class Student {
    private var name: String
    private var hobbies: [String]
    
    private static var ranking: [String] = ["1","2","3","4"]
    
    var stuName: String {
        return "Student -- \(self.name)"
    }
    
    init(name: String) {
        self.name = name
        self.hobbies = ["basketball", "football", "tabletennis"]
    }
    
    func getName() -> String {
        return self.name
    }
    
    subscript(Index: Int) -> String {
        get {
            return hobbies[Index]
        }
        set(val) {
            self.hobbies[Index] = val
        }
    }
    
    class subscript(Index: Int) -> String {
        get {
            return Self.ranking[Index]
        }
        set(val) {
            Self.ranking[Index] = val
        }
    }
}

var stud = Student(name: "Tom")
print(stud.getName())
print(stud.stuName)
print(stud[1])
stud[1] = "xxxx"

print(Student[2])
Student[3] = "5"
print(Student[3])

struct StructStudent {
    private var name: String
    private var hobbies: [String]
    
    private static var ranking: [String] = ["1","2","3","4"]
    
    var stuName: String {
        return "Student -- \(self.name)"
    }
    
    init(name: String) {
        self.name = name
        self.hobbies = ["basketball", "football", "tabletennis"]
    }
    
    func getName() -> String {
        return self.name
    }
    
    subscript(Index: Int) -> String {
        get {
            return hobbies[Index]
        }
        set(val) {
            self.hobbies[Index] = val
        }
    }
    
    static subscript(Index: Int) -> String {
        get {
            return Self.ranking[Index]
        }
        set(val) {
            Self.ranking[Index] = val
        }
    }
}

var stud1 = StructStudent(name: "Tom")
print(stud1.getName())
print(stud1.stuName)
print(stud1[1])
stud1[1] = "xxxx"

print(StructStudent[2])
StructStudent[3] = "5"
print(StructStudent[3])


