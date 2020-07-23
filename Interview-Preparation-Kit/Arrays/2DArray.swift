//  HackerRank tests
//  Array challenges
//  2D Array
//  Created by Maria Fernanda Azolin on 28/06/20.
func hourglassSum(arr: [[Int]]) -> Int {

    let initialLine = 0
    let lastLine = 3
    let initialColumn = 0
    let lastColumn = 3

    var sumsArray = [Int]()

    for line in initialLine...lastLine {
        for column in initialColumn...lastColumn {
            let sum = sumOfHourGlass(arr: arr, line: line, column: column)
            sumsArray.append(sum)
        }
    }

    sumsArray.sort()

    return sumsArray[sumsArray.count-1]
}

func sumOfHourGlass(arr: [[Int]], line: Int, column: Int) -> Int {
    return arr[line][column] + arr[line][column+1] + arr[line][column+2] 
    + arr[line+1][column+1] 
    + arr[line+2][column] + arr[line+2][column+1] + arr[line+2][column+2]
}
