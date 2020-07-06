func angryProfessor(k: Int, a: [Int]) -> String {

    var onTime = 0

    for student in a {
        if student <= 0 { 
            onTime += 1
        }
    }

    if onTime < k { return "YES" }
    else { return "NO" }
}
