func plusMinus(arr: [Int]) -> Void {

    let size = Double(arr.count)
    var positives: Double = 0.000000
    var negatives: Double = 0.000000
    var zeros: Double = 0.000000

    for number in arr {
        if number > 0 {
            positives += 1
        } else if number < 0 {
            negatives += 1
        } else {
            zeros += 1
        }
    }

    print(positives/size)
    print(negatives/size)
    print(zeros/size)
}
