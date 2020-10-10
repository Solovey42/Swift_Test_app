//
// Created by solo on 10/10/20.
//

import Foundation

if CommandLine.arguments.count == 1 {
    let Speed = readLine()! //n
    let Time = readLine()! //m
    GetDist(Speed: Speed, Time: Time)
} else {
    let Speed = CommandLine.arguments[1] //n
    let Time = CommandLine.arguments[2] //m
    GetDist(Speed: Speed, Time: Time)
}

func GetDist(Speed: String, Time: String) {
    print((109 + (Int(Speed)! * Int(Time)!) % 109) % 109)
}
