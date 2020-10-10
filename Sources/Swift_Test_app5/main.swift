//
// Created by solo on 10/11/20.
//

import Foundation

var FirstSet: Set<String> = []
var SecondSet: Set<String> = []
var FirstStringArray = [String]()
var SecondStringArray = [String]()

if CommandLine.arguments.count == 1 {
    let FirstString = readLine()!
    let SecondString = readLine()!
    FirstStringArray = FirstString.components(separatedBy: " ")
    SecondStringArray = SecondString.components(separatedBy: " ")
    intersection(StringArray1: FirstStringArray, StringArray2: SecondStringArray)

} else {
    let FirsSetCount = CommandLine.arguments[1]
    for i in 2...1+Int(FirsSetCount)! {
        let Element = CommandLine.arguments[i]
        FirstStringArray.append(Element)
    }
    let SecondSetCount = CommandLine.arguments[Int(FirsSetCount)!+2]
    for i in 3+Int(FirsSetCount)!...2+Int(FirsSetCount)!+Int(SecondSetCount)!{
        let Element = CommandLine.arguments[i]
        SecondStringArray.append(Element)
    }
    intersection(StringArray1: FirstStringArray, StringArray2: SecondStringArray)

}
func intersection(StringArray1:[String],StringArray2:[String]){
    for element in StringArray1{
        FirstSet.insert(element)
    }
    for element in StringArray2{
        SecondSet.insert(element)
    }
    print(FirstSet.intersection(SecondSet))
}




