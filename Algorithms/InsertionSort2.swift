func insertionSort2(n: Int, arr: [Int]) -> Void {
    var array = arr
    for index in 1..<array.count {
        let value = array[index]
        var position = index

        while position > 0 && array[position - 1] > value {
            array[position] = array[position - 1]
            position -= 1
        }
        array[position] = value

        for element in array {
            print(element, terminator : " ")
        }
        print("")
    }
}
