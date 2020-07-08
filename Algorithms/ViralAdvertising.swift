func viralAdvertising(n: Int) -> Int {

    var result: Double = 0
    var people: Double = 5
    var reached: Double = 0
    
    for _ in 1...n {
        result = floor(people/2.0)
        people = result*3
        reached += result
    }
    return Int(reached)

}
