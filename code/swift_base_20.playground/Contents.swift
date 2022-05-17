import UIKit

var greeting = "Hello, playground"

class RichMan {
    func doPlay() {
        print("Do play")
    }
}

class Tom: RichMan {
    
}

class Jim: RichMan {
    
}

func richManPlay(man: RichMan) {
    if man is Tom {
        print("Tom")
    }
    if man is Jim {
        print("Jim")
    }
    man.doPlay()
}

let richMan = RichMan()
richManPlay(man: richMan)

let tom = Tom()
let jim = Jim()

richManPlay(man: tom)
richManPlay(man: jim)

func richManPlay2(man: RichMan?) {
    if let person = man {
        if person is Tom {
            print("Tom")
        }
        if person is Jim {
            print("Jim")
        }
        person.doPlay()
    } else {
        print("No parameter")
    }
}

richManPlay2(man: nil)

func richManPlay3(man: RichMan) {
    let personTom = man as? Tom
    if personTom != nil {
        print("Tom")
    }
    
    let personJim = man as? Jim
    if personJim != nil {
        print("Jim")
    }
    

    man.doPlay()
}

richManPlay3(man: jim)

func richManPlay4(man: RichMan) {
   let jimPerson = man as! Jim
   print("jim")
   jimPerson.doPlay()
}

richManPlay4(man: jim)





