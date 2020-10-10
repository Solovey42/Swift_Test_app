//
// Created by solo on 10/11/20.
//

import Foundation

if CommandLine.arguments.count == 1 {
    let StrIp = readLine()!
    let SplitIp = StrIp.split(separator: ".")
    CheckIp(SplitIp: SplitIp)
} else {
    let StrIp = CommandLine.arguments[1]
    let SplitIp = StrIp.split(separator: ".")
    CheckIp(SplitIp: SplitIp)

}
func CheckIp(SplitIp:[Substring]){
    if(SplitIp.count==4){
        for item in SplitIp{
            if (Int(item) ?? -1 > 0 && Int(item) ?? -1 < 255){
                continue
            }
        }
        print("YES")
    }
    else{
        print("NO")
    }
}
