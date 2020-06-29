func birthday(s: [Int], d: Int, m: Int) -> Int {

    var result: Int = 0
    for index in s.indices {
        var summary: Int = s[index]
        for value in 1..<d {
            if (index + value) < s.indices.endIndex {
                summary += s[index + value]
            } else {
                summary = 0
            }
        }
        if summary == m { result += 1 }
    }
    return result
}
