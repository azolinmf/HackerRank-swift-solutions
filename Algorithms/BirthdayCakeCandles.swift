func birthdayCakeCandles(ar: [Int]) -> Int {
    var numbers = ar
    numbers.sort(by: >)

    guard let index = numbers.lastIndex(of: numbers[0]) else { return 0 }

    return Int(index + 1)

}
