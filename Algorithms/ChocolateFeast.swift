//https://www.hackerrank.com/challenges/chocolate-feast/problem

func chocolateFeast(n: Int, c: Int, m: Int) -> Int {

    var bars = Int(floor(Double(n/c)))
    var wrappers = bars
    
    while wrappers >= m {
        let newBars = Int(floor(Double(wrappers/m)))
        wrappers = newBars + wrappers%m
        bars += newBars
    }

    return bars
}
