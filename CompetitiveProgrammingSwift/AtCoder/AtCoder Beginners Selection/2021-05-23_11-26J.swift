//
//  2021-05-23_11-26J.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/23.
//

import Foundation

class ABSJ {
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
        let words = ["dream", "dreamer", "erase", "eraser"]
        var S = readLine()!
        
        while let word = words.first(where: { S.hasSuffix($0) }) {
            S.removeLast(word.count)
        }
        
        print(S.isEmpty ? "YES" : "NO")
    }
}
