func designerPdfViewer(h: [Int], word: String) -> Int {

    var heights = [Int]()

    for element in word {
        let letter = element as Character
        if let value = letter.asciiValue {
            let position = letter.isUppercase ? value - 65 : value - 97
            let height = h[Int(position)]
            heights.append(Int(height))
        }
    }
    
    return word.count * (heights.max() ?? 1)
}
