func cutTheSticks(arr: [Int]) -> [Int] {

    var sticks = arr
    sticks.sort()
    
    var length = [Int]()
    
    while sticks.count > 0 {
        length.append(sticks.count)
        
        let minor = sticks[0]
        for index in 0...sticks.count-1 {
            sticks[index] -= minor
        }
    
        sticks = sticks.filter { $0 > 0 }
    }
    
    return length
}
