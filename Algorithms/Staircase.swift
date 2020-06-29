func staircase(n: Int) -> Void {

    var line = ""
    for index in stride(from: n - 1, to: -1, by: -1) {
        let spaces = String(repeating: " ", count: index)
        let hash = String(repeating: "#", count: n - index)
        
        line = spaces + hash

        print(line)
    }
}
