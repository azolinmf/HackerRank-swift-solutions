func timeConversion(s: String) -> String {

    let date1 = DateFormatter()
    date1.dateFormat = "h:mm:ssa"
    let date = date1.date(from: s)
    
    let date2 = DateFormatter()
    date2.dateFormat = "HH:mm:ss"
    
    return date2.string(from: date!)

}
