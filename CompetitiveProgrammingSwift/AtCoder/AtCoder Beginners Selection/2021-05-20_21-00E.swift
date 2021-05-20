//
//  2021-05-20_21-00E.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/20.
//

import Foundation

class ABSE {
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
        let gohyaku = readInt()
        let hyaku = readInt()
        let goju = readInt()
        let sum = readInt()
        
        var count = 0
        for i in 0...gohyaku {
            for j in 0...hyaku {
                for k in 0...goju {
                    if sum == (500 * i) + (100 * j) + (50 * k) {
                        count += 1
                    }
                }
            }
        }
        print(count)
    }
}
