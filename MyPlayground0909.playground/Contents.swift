import UIKit
import QuartzCore

var str = "Hello, playground"


//struct Student {
//    var firstName: String
//    var lastName: String
//
//}
//
//func randomStudent(students: [Student]) -> [Student] {
//    var mutableStudents = students
//    var list = [Student]()
//    while mutableStudents.count > 0 {
//        let randomIndex = Int.random(in: 0..<mutableStudents.count)
//        list.append(mutableStudents[randomIndex])
//        mutableStudents.remove(at: randomIndex)
//
//
//    }
//    return list
//}
//
//let students = [
//    Student(firstName: "Brian", lastName: "Voong"),
//    Student(firstName: "Barack", lastName: "Obama"),
//    Student(firstName: "Donald", lastName: "Trump"),
//    Student(firstName: "George", lastName: "Bush"),
//    Student(firstName: "Ben", lastName: "Franklin")
//]
//
//var x = randomStudent(students: students)
//x.forEach({print($0.firstName, $0.lastName)})

public class BenchTimer {
    public static func measureBlock(closure: () -> Void) -> CFTimeInterval {
        let runCount = 10
        var executionTime = Array<Double>(repeating: 0.0, count: runCount)
        for i in 0..<runCount {
           let startTime = CACurrentMediaTime()
            closure()
            let endTime = CACurrentMediaTime()
            let  execTime = endTime - startTime
            executionTime[i] = execTime
            
        }
        return (executionTime.reduce(0, +)) /  Double(runCount)
    }
    
}

func searchArray(array: [Int]) -> Bool {
    guard array.count != 0 else {
        return false
        
    }
    return array.first == 0 ? true : false
}

var list = [1, 0, 0]
var time =  BenchTimer.measureBlock {
    _ = searchArray(array: list)
}
 print("The extimated tim is \(time)")



func factorial(n: Int) -> Int {
    return factorial(n: n-1) * n
}

let x = factorial(n: 3)
print(x)

print("how are you today")
