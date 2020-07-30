func pangrams(s: String) -> String {

    var alphabet = "abcdefghijklmnopqrstuvwxyz"
    var sArray = Array(s.lowercased())
    
    for letter in alphabet {
        if !sArray.contains(letter) {
            return "not pangram"
        }
    }
    
    return "pangram"
}

