// ABCD
// Apple Code Development By Balaji
// https://www.youtube.com/channel/UC_a9v2yQAIDDBFuiMOkdRXg

import UIKit

// MARK: - Data Types
// String
typealias Name = String
let channelName: Name = "ABCD"
let developer: String = "Balaji"

typealias Expansion = String
let channelExapnsion: Expansion = "Apple Code Development by Balaji"

// Bool
typealias Status = Bool
let subscriptionStatus: Status = true
let isLikeTheVideo: Status = true

// Int
typealias Count = Int
let likeCount: Count = 1
let viewCount: Count = 1

// Float
typealias Pi = Float
let valueOne: Pi = 3.14

// Double
typealias BigVal = Double
let valueTwo: BigVal = 1.123456789012345


// MARK: - Property Combinations
typealias Points = (length: Float, width: Float)
let rectangle: Points = (length: 12, width: 8)
let area = rectangle.length * rectangle.width
print(area)


// MARK: - Array
// String Array
typealias Names = [String]
let names: Names = ["Apple", "Code", "Development, by Balaji"]

// Bool Array
typealias StatusArray = [Bool]
let statusArray: StatusArray = [true, true]

// Int Array
typealias Counts = [Int]
let counts: Counts = [1, 1]


// MARK: - Dictionary
// String of String
typealias SS = [String: String]
let dictOne: SS = ["a": "Apple", "c": "Code", "d": "Development", "b": "by Balaji"]

// String of Bool
typealias SB = [String: Bool]
let dictTwo: SB = ["subscriptionStatus": true, "viewStatus": true, "likeStatus": true]

// String of Int
typealias SI = [String: Int]
let dictThree: SI = ["subscriptionCount": 1, "viewCount": 1, "likeCount": 1]

// String of Any
typealias INFO = [String: Any]
let channelInfo: INFO = ["name": "ABCD", "subscriptionStatus": true, "likeCount": 1]


// MARK: - Structure
// Structure One
struct A {
    struct B {
        struct C {
            struct D {
                var name = ""
            }
        }
    }
}
let objOne = A.B.C.D.init(name: "ABCD")
print("Structure Object One Value => \(objOne.name)")

typealias ABCD = A.B.C.D
let objTwo = ABCD.init(name: "ABCD")
print("Structure Object Two Value => \(objTwo.name)")

// Structure Two
struct AbcdInfo {
    var youtube = "ABCD"
    var socialLinks: Social = Social()
    
    struct Social {
        var linkedIn = "acd-balaji"
        var twitter = "acd_balaji"
        var facebook = "acd.balaji"
        var instagram = "acd_balaji"
        var test: Test = Test()
        
        struct Test {
            var testData = "TEST DATA"
        }
    }
}
let info = AbcdInfo()
print("Structure info.youtube => \(info.youtube)")
print("Structure info.socialLinks.instagram => \(info.socialLinks.instagram)")

let social = AbcdInfo.Social()
let test = AbcdInfo.Social.Test()

typealias Social = AbcdInfo.Social
let socialLinks = Social()
//typealias Test = AbcdInfo.Social.Test
typealias Test = Social.Test
let testLink = Test()


// MARK: - Closure
func add(valueOne: Int, valueTwo: Int, completion: (Int) -> Void) {
    let total = valueOne + valueTwo
    completion(total)
}
add(valueOne: 10, valueTwo: 20) { total in
    print("The TOTAL is => \(total)")
}

typealias AdditionClosure = (Int) -> Void
func addition(valueOne: Int, valueTwo: Int, completion: AdditionClosure) {
    let total = valueOne + valueTwo
    completion(total)
}
addition(valueOne: 10, valueTwo: 20) { total in
    print("AdditionClosure TOTAL is \(total)")
}


// MARK: - Delegate
protocol ProtocolOne: AnyObject {
    func protocolOneMethod()
}
protocol ProtocolTwo: AnyObject {
    func protocolTwoMethod()
}
typealias Protocols = ProtocolOne & ProtocolTwo
class TestClass {
    weak var delegateOne: ProtocolOne?
    weak var delegateTwo: ProtocolTwo?
    weak var delegate: Protocols?
}
