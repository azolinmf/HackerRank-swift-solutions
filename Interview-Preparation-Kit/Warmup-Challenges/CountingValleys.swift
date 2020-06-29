//
//  HackerRank tests
//  Warmup challenges
//  Counting Valleys
//  Created by Maria Fernanda Azolin on 28/06/20.
//

func countingValleys(n: Int, s: String) -> Int {

    var level = 0
    var wasDescending = false
    var numberOfValleys = 0

    for direction in s {

        if direction == "U" {
            level += 1
        } else {
            level -= 1
        }

        if level < 0 {
            if !wasDescending {
                numberOfValleys += 1
                wasDescending = true
            }
        } else {
            if wasDescending {
                wasDescending = false
            }
        }

    }
