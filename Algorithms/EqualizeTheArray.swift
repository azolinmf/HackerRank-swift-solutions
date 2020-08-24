func equalizeArray(arr: [Int]) -> Int {

    //cria um counted set com cada numero do array inicial
    //ve quem tem a maior quantia de repetidos nesse counted set
    //retira quem nao for esse numero com maior repeticao, e faz um array final so com o mais repetido
    //faz tamanho do array inicial - tamanho do array final
    
    var countedSet = NSCountedSet()
    
    for number in arr {
        countedSet.add(number)
    }
    
    var max = 0
    var mostRepeated = 0
    for number in countedSet {
        if countedSet.count(for: number) > max {
            max = countedSet.count(for: number)
            mostRepeated = number as! Int
        }
    }
    
    let finalArray = arr.filter { $0 == mostRepeated }
    
    return arr.count - finalArray.count
}
