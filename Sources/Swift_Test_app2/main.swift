//
// Created by solo on 10/10/20.
//

import Foundation
if CommandLine.arguments.count == 1 {
    guard let name = readLine(strippingNewline: true) else {
        exit(0)
    }
}
func say(name: String) {
    let name = CommandLine.arguments[1]
    print("Helloooooooooooooo, \(name)!")
}
