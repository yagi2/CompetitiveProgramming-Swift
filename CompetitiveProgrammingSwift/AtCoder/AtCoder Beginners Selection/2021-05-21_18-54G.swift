//
//  2021-05-21_18-54G.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/21.
//

import Foundation

class ABSG {
    func readInt() -> Int {
        Int(readLine()!)!
    }
    
    func readInts() -> [Int] {
        readLine()!.split(separator: " ").map { Int($0)! }
    }
    func readTwoInts() -> (a: Int, b: Int) {
        let ints = readInts()
        return (a: ints[0], b: ints[1])
    }
    
    func main() {
        _ = readInt()
        var cards = readInts()
        
        var alice = 0
        var bob = 0
        
        cards.sort()
        cards.reverse()
        
        for (index, card) in cards.enumerated() {
            if index.isMultiple(of: 2) {
                alice += card
            } else {
                bob += card
            }
        }
        print(alice-bob)
    }
}
