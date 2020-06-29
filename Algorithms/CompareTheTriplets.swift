func compareTriplets(a: [Int], b: [Int]) -> [Int] {

    var alice = 0
    var bob = 0
    var result = [Int]()

    for (index, points) in a.enumerated() {
        if points > b[index] {
            alice += 1
        } else if points < b[index] {
            bob += 1
        }
    }

    result.append(alice)
    result.append(bob)

    return result
}
