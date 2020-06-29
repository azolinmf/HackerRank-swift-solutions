func diagonalDifference(arr: [[Int]]) -> Int {
   
    var firstDiagonal  = 0
    var secondDiagonal = 0

    let size = arr[0].count
    
    for index in 0...size-1 {
        firstDiagonal += arr[index][index]
        secondDiagonal += arr[(size-index-1)][index]
    }

    return abs(firstDiagonal - secondDiagonal)
  
}
