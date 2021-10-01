import UIKit

func repeatChar(in str: String) {
    var dict:[Character: Int] = [:]
    
    for c in str {
        dict[c] = (dict[c] ?? 0) + 1
    }
    
    for (key, value) in dict {
        if (key != " " && value != 1) {
            print("\(key) = \(value)")
        }
    }
}