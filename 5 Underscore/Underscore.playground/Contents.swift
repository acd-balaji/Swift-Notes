// ABCD
// Apple Code Development By Balaji
// https://www.youtube.com/channel/UC_a9v2yQAIDDBFuiMOkdRXg

import UIKit

// MARK: - Ignore unused index in For loop

for _ in 0..<5 {
    print("Hello")
}

let array = ["A", "B", "C", "D"]
for item in array {
    print(item)
}

for _ in 0..<array.count {
    print("Hello")
}


// MARK: - Ignore values in Tuples
let channelName = ("A", "B", "C", "D")
let (a, _, c, d) = channelName
print(a)
print(c)
print(d)

let frame = (x: 10, y: 20, width: 100, height: 100)
let (width, height) = (frame.width, frame.height)
let (_, _, widthVal, heightVal) = frame
print(widthVal)
print(heightVal)


// MARK: - Ignore labels in the Function

func add(_ valueOne: Int, _ valueTwo: Int) {
    let total = valueOne + valueTwo
    print("add \(total)")
}
//add(valueOne: <#T##Int#>, valueTwo: <#T##Int#>)
add(10, 20)

func addOne(_ valueOne: Int, valueTwo: Int) {
    let total = valueOne + valueTwo
    print("addOne \(total)")
}
addOne(10, valueTwo: 20)

func addTwo(valueOne: Int, _ valueTwo: Int) {
    let total = valueOne + valueTwo
    print("addTwo \(total)")
}
addTwo(valueOne: 10, 20)

func addThree(valueOne: Int, _ valueTwo: Int, valueThree: Int) {
    let total = valueOne + valueTwo + valueThree
    print("addThree \(total)")
}
addThree(valueOne: 10, 20, valueThree: 30)


// MARK: - Ignore return values in Function

func addition(_ valueOne: Int, _ valueTwo: Int) -> Int {
    let total = valueOne + valueTwo
    print("addition \(total)")
    return total
}
let total = addition(10, 20)
let _ = addition(100, 200)

func getChannelInfo() -> (String, String, String, String, String) {
    return ("ABCD", "acd-balaji", "acd_balaji", "acd.balaji", "acd_balaji")
}
let (name, linkedIn, twitter, _, _) = getChannelInfo()
print("getChannelInfo \(name)")
print("getChannelInfo \(linkedIn)")
print("getChannelInfo \(twitter)")


// MARK: - Ignore values in Enumeration

enum channelInfo {
    case A(String, String)
    case B(String, String)
    case C(String, String)
    case D(String, String)
    
    func loadFirstString() {
        switch self {
        case .A(let valueOne, _):
            print("loadFirstString => \(valueOne)")
        case .B(let valueOne, _):
            print("loadFirstString => \(valueOne)")
        case .C(let valueOne, _):
            print("loadFirstString => \(valueOne)")
        case .D(let valueOne, _):
            print("loadFirstString => \(valueOne)")
        }
    }
    
    func loadSecondString() {
        switch self {
        case .A(_, let valueTwo):
            print("loadSecondString => \(valueTwo)")
        case .B(_, let valueTwo):
            print("loadSecondString => \(valueTwo)")
        case .C(_, let valueTwo):
            print("loadSecondString => \(valueTwo)")
        case .D(_, let valueTwo):
            print("loadSecondString => \(valueTwo)")
        }
    }
}
let objectOne = channelInfo.A("A", "Apple")
objectOne.loadFirstString()
let objectTwo = channelInfo.B("B", "by Balaji")
objectTwo.loadSecondString()


// MARK: - Ignore parameter in Closure

func additionSubtraction(valueOne: Int, valueTwo: Int, addition: (Int)-> Void, subtraction: (Int) -> Void) {
    let total = valueOne + valueTwo
    let diff = valueOne - valueTwo
    addition(total)
    subtraction(diff)
}

additionSubtraction(valueOne: 100, valueTwo: 50) { total in
    print("Closure TOTAL => \(total)")
} subtraction: { _ in
//    print("Closure SUBTRACTION => \(diff)")
}


// MARK: - Ignore parameter in Override function

class ACD {
    func display(_ name: String) {
        print("\(name) => Apple Code Development")
    }
}

class B: ACD {
    override func display(_ _: String) {
        print("By Balaji")
    }
}

let acd = ACD()
acd.display("ACD")

let b = B()
b.display("B")
