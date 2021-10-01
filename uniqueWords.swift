import UIKit

func uniqueWord(in arr: String) {
    let separated = arr.lowercased().components(separatedBy: " ")
    let countedSet = NSCountedSet(array: separated)
    let unique = countedSet.filter { countedSet.count(for: $0) == 1 }.flatMap { $0 as? String }
    print(unique)
}
