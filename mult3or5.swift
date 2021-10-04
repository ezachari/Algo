// Description:
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

// Note: If the number is a multiple of both 3 and 5, only count it once.

func solution(_ num: Int) -> Int {
    var store: Int = 0
    if num < 0 {
        return 0
    }
    // 1..<num not working :/
    for number in 0..<num {
        if (number % 3 == 0) {
            store += number
        } else if (number % 5 == 0) {
            store += number
        }
    }
    return store
}


//опять фильтер редьюс weirddude
func solution(_ num: Int) -> Int {
  return (0..<num).filter { ($0 % 3 * $0 % 5) == 0 }.reduce(0, +)
}