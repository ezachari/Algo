import Foundation
//Consider the following numbers (where n! is factorial(n)):
//
//u1 = (1 / 1!) * (1!)
//u2 = (1 / 2!) * (1! + 2!)
//u3 = (1 / 3!) * (1! + 2! + 3!)
//...
//un = (1 / n!) * (1! + 2! + 3! + ... + n!)
//Which will win: 1 / n! or (1! + 2! + 3! + ... + n!)?
//
//Are these numbers going to 0 because of 1/n! or to infinity due to the sum of factorials or to another number?
//
//Task
//Calculate (1 / n!) * (1! + 2! + 3! + ... + n!) for a given n, where n is an integer greater or equal to 1.
//
//To avoid discussions about rounding, return the result truncated to 6 decimal places, for example:
//
//1.0000989217538616 will be truncated to 1.000098
//1.2125000000000001 will be truncated to 1.2125
//Remark
//Keep in mind that factorials grow rather rapidly, and you need to handle large inputs.
//
//Hint
//MARK: You could try to simplify the expression.

func factorial(_ n: Int, _ hint: Int) -> Double {
    var result: Double = 1.0
    for num in hint...n {
        result *= Double(num)
    }
    return result
}

func going(_ n: Int) -> Double {
    var result: Double = 0.0
    for num in 1..<n {
        result += 1.0 / factorial(n, num + 1)
    }
    result += 1
    return Double((result * 1000000).rounded(.towardZero) / 1000000)
}

print(going(8))