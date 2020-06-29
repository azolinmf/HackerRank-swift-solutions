func miniMaxSum(arr: [Int]) -> Void {

    var numbers = arr
    numbers.sort()

    let minimun = numbers.reduce(0, +) - numbers[4]
    let maximun = numbers.reduce(0, +) - numbers[0]

    let miniMax = String(minimun) + " " + String(maximun)
    print(miniMax)
}
