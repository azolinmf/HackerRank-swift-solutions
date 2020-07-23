func gradingStudents(grades: [Int]) -> [Int] {
    
    var results = [Int]()

    for grade in grades {
        if grade >= 38 && grade%5 > 2 {
            results.append(grade + (5 - grade%5))
        } else {
            results.append(grade)
        }
    }

    return results
}
