//  HackerRank tests
//  Warmup challenges
//  Repeated String
//  Created by Maria Fernanda Azolin on 29/06/20.

func repeatedString(s: String, n: Int) -> Int {

    let subStringCounter = s.filter{ $0 == "a" }.count
    let closedRepetitions = Int(floor(Double(n/s.count)))
    let rest = n%(s.count)

    var aCounter =  closedRepetitions * subStringCounter

    let endIndex = s.index(s.startIndex, offsetBy: rest)
    let lastSubString = String(s[..<endIndex])

    aCounter += lastSubString.filter{ $0 == "a" }.count

    return aCounter

}
