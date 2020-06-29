func twoStrings(s1: String, s2: String) -> String {

    let set1 = NSCountedSet(array: Array(s1))
    let set2 = NSCountedSet(array: Array(s2))

    for letter in set1 {
        if set2.count(for: letter) >= 1  {
            return "YES"
        }
    }

    return "NO"

}
