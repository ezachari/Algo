func diamond(_ size: Int) -> String {
    if size < 0 || size % 2 == 0 {
        return "nil"
    }
    var diamond = ""
    var reversedPart = ""
    var start = 1
    var reversedStart = size
    while start < size + 1 {
        let spacing = (size - start) / 2
        let reversedSpacing = (size - reversedStart) / 2
        if (spacing != 0) {
            diamond.append(String(repeating: " ", count: spacing))
        }
        if reversedSpacing != 0 {
            reversedPart.append(String(repeating: " ", count: reversedSpacing))
            reversedPart.append(String(repeating: "*", count: reversedStart).appending("\n"))
        }
        diamond.append(String(repeating: "*", count: start).appending("\n"))
        start += 2
        reversedStart -= 2
    }
    return diamond + reversedPart
}