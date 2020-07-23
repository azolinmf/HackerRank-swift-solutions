func camelcase(s: String) -> Int {

    return s.filter { $0.isUppercase }.count + 1
    
}

//filters the 's' array looking for uppercase letters
//adds 1 to count the first word
