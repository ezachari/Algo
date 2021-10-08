// You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

// Examples
// [2, 4, 0, 100, 4, 11, 2602, 36]
// Should return: 11 (the only odd number)

// [160, 3, 1719, 19, 11, 13, -21]
// Should return: 160 (the only even number)

//2HEADER
func findOutlier(_ array: [Int]) -> Int {

    var oddCount: Int = 0
    var evenCount: Int = 0
    var oddNumber: Int = 0
    var evenNumber: Int = 0
    var count: Int = 0
    
    for number in array {
        if (number % 2 == 0) {
            evenCount += 1
            evenNumber = number
        } else {
            oddCount += 1
            oddNumber = number
        }
        if evenCount > 0 && oddCount > 0 {
            if evenCount > oddCount {
                return oddNumber
            } else if oddCount > evenCount {
                return evenNumber
            }
        }
    }
    return evenCount > oddCount ? oddNumber : evenNumber
}