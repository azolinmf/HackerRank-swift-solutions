func checkMagazine(magazine: [String], note: [String]) -> Void {

    //my early solution was fine and working, but the time complexity was O(n2) 
    //because of the firstIndex() inside the for loop
    //That caused timeOut in some cases.
    //A way to solve this was using NSCountedSet
    //a nice explanation: https://www.hackingwithswift.com/example-code/arrays/how-to-count-objects-in-a-set-using-nscountedset

    //early solution:
    // if magazine.count < note.count { 
    //     print("No")
    //     return
    // }
    // var magazineCopy = magazine
    // for notes in note {
    //     if !magazineCopy.contains(notes) {
    //         print("No")
    //         return
    //     }
    //     if let index = magazineCopy.firstIndex(of: notes) {
    //         magazineCopy.remove(at: index)
    //     }
    // }
    // print("Yes")
    // return

    let magazineWords = NSCountedSet(array: magazine)
    let noteWords = NSCountedSet(array: note)
    for noteWord in noteWords {
        //if any word appears more times in the note than it appears in the
        //magazine, the ransom note can't be made
        if magazineWords.count(for: noteWord) < noteWords.count(for: noteWord) {
            print("No")
            return
        }
    }
    print("Yes")

}
