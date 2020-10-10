import Foundation

if CommandLine.arguments.count == 1 {
    let StrFirstSide = readLine()! //n
    let StrSecondSide = readLine()! //m
    let StrDistToLongSide = readLine()! //x
    let StrDistToShortSide = readLine()! //y
    app1(StrFirstSide: StrFirstSide, StrSecondSide: StrSecondSide, StrDistToLongSide: StrDistToLongSide, StrDistToShortSide: StrDistToShortSide)
} else {
    let StrFirstSide = CommandLine.arguments[1] //n
    let StrSecondSide = CommandLine.arguments[2] //m
    let StrDistToLongSide = CommandLine.arguments[3] //x
    let StrDistToShortSide = CommandLine.arguments[4] //y
    app1(StrFirstSide: StrFirstSide, StrSecondSide: StrSecondSide, StrDistToLongSide: StrDistToLongSide, StrDistToShortSide: StrDistToShortSide)
}

func app1(StrFirstSide: String, StrSecondSide: String, StrDistToLongSide: String, StrDistToShortSide: String) {

    var FirstSide = Int(StrFirstSide)!
    var SecondSide = Int(StrSecondSide)!
    var DistToLongSide = Int(StrDistToLongSide)!
    var DistToShortSide = Int(StrDistToShortSide)!

    if FirstSide > SecondSide {
        let swap = FirstSide;
        FirstSide = SecondSide;
        SecondSide = swap;
    }
    if DistToLongSide >= FirstSide / 2 {
        DistToLongSide = FirstSide - DistToLongSide
    }
    if DistToShortSide >= SecondSide / 2 {
        DistToShortSide = SecondSide - DistToShortSide
    }
    if DistToLongSide < DistToShortSide {
        print(DistToLongSide)
    } else {
        print(DistToShortSide)
    }
}