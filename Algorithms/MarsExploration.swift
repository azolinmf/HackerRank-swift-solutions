func marsExploration(s: String) -> Int {

    var errors = 0
    
    for (index,letter) in s.enumerated() {
        if index%3 == 0 || index%3 == 2 {
            if letter != "S" {
                errors += 1
            }
        } else if index%3 == 1 {
           if letter != "O" {
                errors += 1
            }
        }
        
    }
    
    return errors

}

//given the string SOS, index 0 and 2 are "S"
//and index 1 is "O"
//so we consider this string as the pattern and look
//for differences in the given word, comparing
//the letter at the index
