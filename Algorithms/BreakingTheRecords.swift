func breakingRecords(scores: [Int]) -> [Int] {

    var max = scores.first!
    var min = scores.first!
    var maxCounter = 0
    var minCounter = 0
    
    var result = [Int]()
    
    for element in scores {
        if element < min {
            min = element
            minCounter += 1
        }
        if element > max {
            max = element
            maxCounter += 1
        }
    }
    result.append(maxCounter)
    result.append(minCounter)
    
    return result

}
