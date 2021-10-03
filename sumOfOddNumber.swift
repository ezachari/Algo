// Given the triangle of consecutive odd numbers:

//              1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...
// Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

// 1 -->  1
// 2 --> 3 + 5 = 8


func rowSumOddNumbers(_ row: Int) -> Int {
    var count: Int = 0
    var result: Int = 0
    var number: Int = 1
    
    let maxCount: Int = (row * (row + 1)) / 2 // количество цифр от 1 
    
    while count != maxCount {
        if (count >= maxCount - row) {
            result += number
        }
        count += 1
        number += 2
        
    }
    return result
}