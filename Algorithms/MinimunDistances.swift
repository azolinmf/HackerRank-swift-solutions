func minimumDistances(a: [Int]) -> Int {
    var minDistance = a.count;
    let lastPos = a.count-1
    
    for (index, element) in a.enumerated() {
        if index < lastPos {
            let aux = a[index+1...lastPos]
            if aux.contains(element) {
                let distance = (aux.firstIndex(of: element) ?? 0) - index
                if distance < minDistance {
                    minDistance = distance
                }
            }
        }
    }
    return minDistance != a.count ? minDistance : -1
}
