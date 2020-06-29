//
//  HackerRank tests
//  Warmup challenges
//  Sock Merchant
//  Created by Maria Fernanda Azolin on 28/06/20.
//
//see the problem below:
//www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup


import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {

    var numberOfPairs = 0
    var socksArray = [Int]()

    for a in ar {
        if let index = socksArray.firstIndex(of: a) {
            numberOfPairs += 1
            socksArray.remove(at: index)
        } else {
            socksArray.append(a)
        }
    }
    
    return numberOfPairs
}
