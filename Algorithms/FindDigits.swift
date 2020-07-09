func findDigits(n: Int) -> Int {

    let digits = String(n).compactMap{ $0.wholeNumberValue }
    var divisors = 0
    for digit in digits {
        if digit != 0 && n%digit == 0 {
            divisors += 1
        }
    } 
    return divisors
}

//first we split the integer in its separeted digits
//for each digit we check if the whole number is divisible by it
//but first we check if the digit is not 0
//as division by zero is undefined
