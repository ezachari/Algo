import UIKit

func eqIndexValue(in arr1:[Int], and arr2:[Int]) {
    if arr1.count <= arr2.count {
        for i in arr1.indices {
            if (arr1[i] == arr2[i]) {
                print("index[\(i)] : value[\(arr1[i])]")
            }
        }
    } else {
        for i in arr2.indices {
            if (arr2[i] == arr1[i]) {
                print("index[\(i)] : value[\(arr2[i])]")
            }
        }
    }
}
