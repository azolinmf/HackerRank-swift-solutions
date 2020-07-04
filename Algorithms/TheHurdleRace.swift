func hurdleRace(k: Int, height: [Int]) -> Int {

    guard let max = height.max() else { return 0 }
    let doses = Int(max - k)
    if doses > 0 { return doses }
    return 0
}
