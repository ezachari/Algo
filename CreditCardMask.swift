// Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

// Your task is to write a function maskify, which changes all but the last four characters into '#'.

// Examples
// maskify("4556364607935616") // should return "############5616"
// maskify("64607935616")      // should return "#######5616"
// maskify("1")                // should return "1"
// maskify("")                 // should return ""

func maskify(_ string:String) -> String {
    
    if string.count < 5 {
        return string
    }
    let index = string.index(string.endIndex, offsetBy: -4)
    return String(repeating: "#", count: string.count - 4) + String(string[index...])
}


//VERY CLEAVER... map + joined
func maskify(_ string:String) -> String {
  string.enumerated().map { $0 < string.count - 4 ? "#" : "\($1)"}.joined()
}