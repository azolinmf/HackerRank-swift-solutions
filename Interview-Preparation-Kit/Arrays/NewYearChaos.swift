//  HackerRank tests
//  Array challenges
//  New Year Chaos
//  Created by Maria Fernanda Azolin on 28/06/20.

func minimumBribes(q: [Int]) -> Void {

    var numberOfDisplacements = 0

    for index in (0..<q.count).reversed() {
        let posInLine = index + 1
        let displacement = q[index] - posInLine
        if displacement > 2 { 
            print("Too chaotic")
            return 
        } 

        let initialPos = q[index] - 1
        let range = max(0,initialPos - 2)..<index

        for number in range {
                if q[number] > q[index] {
                    numberOfDisplacements += 1
                }
            }
    }
    
    print(numberOfDisplacements)
}
