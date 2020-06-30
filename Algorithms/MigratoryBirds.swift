func migratoryBirds(arr: [Int]) -> Int {

    var bird = 0
    var counts = [Int: Int]()
    var array = arr
    array.sort()
    
    array.forEach { counts[$0] = (counts[$0] ?? 0) + 1 }

    if let (value, count) = counts.max(by: {$0.1 < $1.1}) {
        bird = value
    }
    
    return bird
}
