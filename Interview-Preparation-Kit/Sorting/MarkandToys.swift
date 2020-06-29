func maximumToys(prices: [Int], k: Int) -> Int {

    var toys = prices
    var money = k
    toys.sort()

    var index = 0
    while(money > 0 ) {
        if money - toys[index] >= 0 {
            money -= toys[index]
        } else {
            return index
        }
        index += 1
    }

    return index
}


