//
// Created by solo on 10/10/20.
//

import Foundation

if CommandLine.arguments.count == 1 {
    let String = readLine()!
    var StringArray = [String]
    var StringOut:String = ""
    StringArray = String.components(separatedBy: " ")
    distinct(StringOut: &StringOut,source: &StringArray)

} else {
    let Count = CommandLine.arguments[1]
    var StringArray = [String]()
    var StringOut:String = ""
    for i in 2...1+Int(Count)!{
        let Element = CommandLine.arguments[i]
        StringArray.append(Element)
    }
    distinct(StringOut: &StringOut,source: &StringArray)

}
func distinct(StringOut: inout String,source: inout [String]) {
    var unique = [String]()
    for i in 0...source.count-1  {
        let a = source[i]
        source.remove(at: i)
        if !source.contains(a){
            unique.append(a)
        }
        source.insert(a, at: i)
    }
    for item in unique{
        StringOut += "\(item) "
    }
    print(StringOut)
}

