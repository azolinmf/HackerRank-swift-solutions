var spent = [Int]()
    
    for keyboard in keyboards {
        for drive in drives {
            if keyboard + drive <= b {
                spent.append(keyboard + drive)
            }
        }
    }
    
    if spent.count >= 1 { return spent.max()! }
    else { return -1 }
