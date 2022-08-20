// ABCD
// Apple Code Development By Balaji
// https://www.youtube.com/channel/UC_a9v2yQAIDDBFuiMOkdRXg

import UIKit

// A tuple with String and Bool
var channelSubscriptionStatus = ("ABCD", false)


// Decompose Tuples
let (channelName, subscriptionStatus) = channelSubscriptionStatus
print(channelName)
print(subscriptionStatus)

let (cName, _) = channelSubscriptionStatus
let (_, sStatus) = channelSubscriptionStatus
print(cName)
print(sStatus)


// Accessing Tuples using Index
print(channelSubscriptionStatus.0)
print(channelSubscriptionStatus.1)


// Modify Tuple Element
channelSubscriptionStatus.1 = true


// Add or Remove Tuple Elements
//channelSubscriptionStatus.


// Named Tuples
let channelInfo = (youtube: "ABCD", linkedIn: "acd-balaji", twitter: "acd_balaji", facebook: "acd.balaji", instagram: "acd_balaji")
channelInfo.youtube
print(channelInfo.linkedIn)
print(channelInfo.twitter)
print(channelInfo.facebook)
print(channelInfo.instagram)


// Tuples in Functions
func getMinMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let intArray = [12, 14, 42, 65, 10]
let minMax = getMinMax(array: intArray)
print(minMax)


// Nested Tuples
let youtubeChannel = ("Apple", "Code", "Development", ("By", "Balaji"))
print(youtubeChannel.0)
print(youtubeChannel.1)
print(youtubeChannel.2)
print(youtubeChannel.3)
print(youtubeChannel.3.0)
print(youtubeChannel.3.1)


// Dictionary inside a Tuple
let channel = ("ABCD", ["linkedIn": "acd-balaji", "twitter": "acd_balaji", "facebook": "acd.balaji", "instagram": "acd_balaji"])
channel.1
print(channel.1["facebook"] ?? "")
