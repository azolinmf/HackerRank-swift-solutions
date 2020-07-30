func beautifulBinaryString(b: String) -> Int {

    let bArray = Array(b)
    var counter = 0
    var skip = 0
    
    for index in 2..<bArray.count where index != skip {
        if bArray[index] == "0" && bArray[index-1] == "1" && bArray[index-2] == "0" {
            counter += 1
            skip = index + 2
        }
    }

    return counter
}

//so this goes through the string looking for
//010 patterns, and when we find them
//we want to skip to the rest of the string, aka 2 positions later
//For that, we keep track of the index we currently are
//and use it in a where clause in the for loop
