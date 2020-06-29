//  HackerRank tests
//  Warmup challenges
//  Arrays: Left Rotation
//  Created by Maria Fernanda Azolin on 28/06/20.

func rotLeft(a: [Int], d: Int) -> [Int] {

    let n = a.count
    let lastArray = Array(a[..<d])
    let firstArray = Array(a[d..<n])

    return firstArray + lastArray
}
