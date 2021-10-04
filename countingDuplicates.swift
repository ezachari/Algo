// Description:
// Count the number of Duplicates
// Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

// Example
// "abcde" -> 0 # no characters repeats more than once
// "aabbcde" -> 2 # 'a' and 'b'
// "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
// "indivisibility" -> 1 # 'i' occurs six times
// "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
// "aA11" -> 2 # 'a' and '1'
// "ABBA" -> 2 # 'A' and 'B' each occur twice

func countDuplicates(_ s:String) -> Int {
    
    var dict:[Character:Int] = [:]
    var count: Int = 0
    
    for character in s.lowercased() {
        if dict[character] == nil {
            dict[character] = 1
        } else {
            dict[character]! += 1
        }
    }
    for index in dict.indices {
        if dict[index].value > 1 {
            count += 1
        }
    }
    return count
}