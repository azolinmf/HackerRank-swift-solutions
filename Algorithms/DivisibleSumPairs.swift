func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {

    var counter = 0
    for (index, element) in ar.enumerated() {
        let sum = getPairsSum(ar: ar, index: index)
        counter += sum.filter{$0%k == 0}.count
    }
    return counter
}

func getPairsSum(ar: [Int], index: Int) -> [Int] {
    if index > ar.count-2 {
        return []
    }

    var pairSum = [Int]() 
    for i in (index + 1)...ar.count-1 {
        pairSum.append(ar[index] + ar[i])
    }
    return pairSum
}
