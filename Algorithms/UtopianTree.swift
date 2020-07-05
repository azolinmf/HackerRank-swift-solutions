func utopianTree(n: Int) -> Int {

    if n == 0 { return 1 }
    var height = 1
    for i in 1...n {
        if i%2 != 0 {
            height = height*2
        } else {
            height += 1
        }
    }
    return height
}
