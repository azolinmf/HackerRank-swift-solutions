func introTutorial(V: Int, arr: [Int]) -> Int {
    guard let index = arr.firstIndex(of: V) else { return 0 }
    return index
}

//using guard statement to safely ensure 
//that the number V exists in the array 
