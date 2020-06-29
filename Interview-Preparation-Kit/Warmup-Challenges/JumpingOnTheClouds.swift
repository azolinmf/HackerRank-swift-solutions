//  HackerRank tests
//  Warmup challenges
//  Jumping on the clouds
//  Created by Maria Fernanda Azolin on 28/06/20.

func jumpingOnClouds(c: [Int]) -> Int {

    var jumps = 0
    var positions = c.count
    var iterator = 0

    while(iterator < positions-1) {

        var nextPos = iterator + 2
        
        if nextPos < positions {
            if c[nextPos] == 0 {
                iterator += 2
            } else {
                iterator += 1
            }
        } else {
            if iterator == positions {
                return jumps
            } 
            iterator += 1
        }

        jumps += 1
    }

    print(jumps)
    return jumps
}
