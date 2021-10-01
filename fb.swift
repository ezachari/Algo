import UIKit

func fbByIndex(index: Int) -> Int {
    var num1 = 0
    var num2 = 1

    for n in 0..<index {
        let num = num1 + num2
        num1 = num2
        num2 = num
    }
    return num2
}