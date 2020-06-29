func countSwaps(a: [Int]) -> Void {

    var swaps = 0
    var array = a

    for i in 0...(array.count-1) {
        for j in 0...(array.count-2) {
            // Swap adjacent elements if they are in decreasing order
            if array[j] > array[j + 1] {
                array.swapAt(j, j + 1)
                swaps += 1
            }
        }
    }

    print("Array is sorted in \(swaps) swaps.")
    print("First Element: \(array.first!)")
    print("Last Element: \(array.last!)")
}
