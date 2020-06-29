//  HackerRank tests
//  Array challenges
//  Minimum Swaps 2
//  Created by Maria Fernanda Azolin on 28/06/20.

func minimumSwaps(arr: [Int]) -> Int {

    //itera o array
    //ve se a posicao do array contem oq deveria
    //se nao, coloca o numero errado onde ele deveria estar
    //caso sim, vai pra proxima posicao

    var array = arr    
    var index = 0
    var swaps = 0
    
    while index < array.count - 1 {
        let correctNumber = index + 1
        if correctNumber != array[index] {
            array.swapAt(index, array[index] - 1)
            swaps += 1
        } else {
            index += 1
        }
    }

    return swaps
}
