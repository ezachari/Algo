import UIKit

func linearSearch<T: Equatable>(in a: [T], withKey key: T) -> Int? {
    
    for i in 0..<a.count {
        if a[i] == key {
            return i
        }
    }
    return nil
}

linearSearch(in: [1, 2, 3, 4, 5], withKey: 5)

//for this array must be sorted
///binary search(recursive)
func divideAndConquerR<T: Comparable>(in a: [T], withKey key: T, range: Range<Int>) -> Int? {
    
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        if a[midIndex] > key {
            return divideAndConquerR(in: a, withKey: key, range: range.lowerBound ..< midIndex)
        } else if a[midIndex] < key {
            return divideAndConquerR(in: a, withKey: key, range: midIndex + 1 ..< range.upperBound)
        } else {
            return midIndex
        }
    }
}

var numbers = [1, 2, 3, 4, 5, 6, 7, 10, 42, 21, 32, 43, 44, 11, 12, 0]
numbers.sort()
divideAndConquerR(in: numbers, withKey: 43, range: 0 ..< numbers.count)


///binary search(iterative)
func divideAndConquerI<T: Comparable>(in a: [T], withKey key: T) -> Int? {
    var lower = 0
    var upper = a.count
    while lower < upper {
        let midIndex = lower + (upper - lower) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lower = midIndex + 1
        } else {
            upper = midIndex
        }
    }
    return nil
}

divideAndConquerI(in: numbers, withKey: 43)