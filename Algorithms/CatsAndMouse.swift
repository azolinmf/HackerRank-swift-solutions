func catAndMouse(x: Int, y: Int, z: Int) -> String {

    if abs(x-z) == abs(y-z) {
        return ("Mouse C")
    } 
    if abs(x-z) < abs(y-z) {
        return ("Cat A")
    }
    return ("Cat B")
}
