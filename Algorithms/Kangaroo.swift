func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {

    if (x1 > x2 && v1 >= v2) || (v2 >= v1) {
        return "NO"
    } else {
        let jump = (x1 - x2)%(v2 - v1)
        if jump == 0 {
            return "YES"
        } else {
            return "NO"
        }
    }

}
