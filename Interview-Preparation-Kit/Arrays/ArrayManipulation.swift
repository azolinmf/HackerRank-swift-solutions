//  HackerRank tests
//  Array challenges
//  Array Manipulation
//  Created by Maria Fernanda Azolin on 29/06/20

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {

//other solutions would be simpler to understand, but 
//using DIFFERENCE ARRAY was necessary to avoid timeOut

    var zeros = [Int](repeating: 0, count: n)
    var diff = zeros

    for query in queries {
        let k = query[2]
        let a = query[0] - 1
        let b = query[1] - 1
    
        diff[a] += k
        if b+1 <= diff.count-1 {
            diff[b+1] -= k
        }
    }
    
    var level = 0
    for (index, element) in zeros.enumerated() {
        level += diff[index]
        zeros[index] = level
    }

    return zeros.max()!
}
