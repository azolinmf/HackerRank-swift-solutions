//my approach for this test was:
//create an array in the range given by the parameters
//create an array with the reversed pairs of these numbers
//^used map function to transform the first array here
//create a third array with the absolute difference between the pairs of numbers
//use filter to find which ones of these matched the condition
//aka which one was diivisible by k parameter

//also, created an auxiliar function to return a reversed Integer

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    
    let days = Array(i...j)
    let reversedDays = days.map { reverseInt(number: $0) }
    
    var difference = [Int]()
    for (index,day) in days.enumerated() {
        difference.append(abs(day - reversedDays[index]))
    }
    
    return difference.filter { $0%k == 0 }.count
}

func reverseInt(number: Int) -> Int {
    var n = number
    var reversed = 0
    while (n != 0) {
        reversed = reversed * 10
        reversed = reversed + n % 10
        n = n / 10
    }
    return reversed
}
