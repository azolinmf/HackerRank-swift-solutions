func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    
    return b*min(bc,(wc + z)) + w*min(wc, (bc+z))
}
