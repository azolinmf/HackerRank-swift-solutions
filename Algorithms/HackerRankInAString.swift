func hackerrankInString(s: String) -> String {
    let str = Array("hackerrank")
    
    if s.count < str.count {
        return "NO"
    }
    
    var counter = 0
    for letter in s {
        if counter < str.count && letter == str[counter] {
                counter += 1
        }
    }
    
    return counter == str.count ? "YES" : "NO"
}
