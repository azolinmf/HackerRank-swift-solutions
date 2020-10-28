func marcsCakewalk(calorie: [Int]) -> Int {
    let sorted = calorie.sorted(by: >)
    var count = 0
    
    for (index, element) in sorted.enumerated() {
        count += Int(pow(2.0, Double(index))) * element
    }
    
    return count
}
