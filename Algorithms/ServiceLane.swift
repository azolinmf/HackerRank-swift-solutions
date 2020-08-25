//Disclaimer: this problem was poorly written
//and the template is kind of wrong
//as the withds are not passed to the function
//To fix it and solve the problem,
//change the method call and receive width instead of the n parameter
//so 
// func serviceLane(n: Int, cases: [[Int]]) -> [Int] {
//turns into
// func serviceLane(width: [Int], cases: [[Int]]) -> [Int] {
//and
// let result = serviceLane(n: n, cases: cases)
//turns into
// let result = serviceLane(width: width, cases: cases)


func serviceLane(width: [Int], cases: [[Int]]) -> [Int] {
    var results: [Int] = []
   
    for i in 0...cases.count-1 {
        let initial = cases[i][0]
        let final = cases[i][1]
        
        var newWidths: [Int] = []
        for pos in initial...final {
            newWidths.append(width[pos])
        }
        results.append(newWidths.min() ?? 0)
    }
        
    return results
}
