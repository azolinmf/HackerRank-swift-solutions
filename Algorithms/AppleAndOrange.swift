func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {

    var numberOfApples = 0
    var numberOfOranges = 0

    for apple in apples {
        if a + apple >= s && a + apple <= t {
            numberOfApples += 1
        }
    }

    for orange in oranges {
        if b + orange >= s && b + orange <= t {
            numberOfOranges += 1
        }
    }

    print(numberOfApples)
    print(numberOfOranges)
}
