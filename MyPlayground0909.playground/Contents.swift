import UIKit

var str = "Hello, playground"


struct Student {
    var firstName: String
    var lastName: String
    
}

func randomStudent(students: [Student]) -> [Student] {
    var mutableStudents = students
    var list = [Student]()
    while mutableStudents.count > 0 {
        let randomIndex = Int.random(in: 0..<mutableStudents.count)
        list.append(mutableStudents[randomIndex])
        mutableStudents.remove(at: randomIndex)
        
        
    }
    return list
}

let students = [
    Student(firstName: "Brian", lastName: "Voong"),
    Student(firstName: "Barack", lastName: "Obama"),
    Student(firstName: "Donald", lastName: "Trump"),
    Student(firstName: "George", lastName: "Bush"),
    Student(firstName: "Ben", lastName: "Franklin")
]

var x = randomStudent(students: students)
x.forEach({print($0.firstName, $0.lastName)})

