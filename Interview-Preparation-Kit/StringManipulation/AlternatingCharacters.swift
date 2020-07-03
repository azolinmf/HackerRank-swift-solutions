func alternatingCharacters(s: String) -> Int {

    var remove = 0
    let arr = Array(s)
    for (index, letter) in arr.enumerated() {
        if index < arr.count-1 {
            if letter == arr[index+1] {
                remove += 1
            }
        }
    }
    return remove
}
