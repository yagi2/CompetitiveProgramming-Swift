//
//  2021-05-20_20-55D.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/20.
//

import Foundation

class ABSD {
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
        var numbers = readInts()
        
        var count = 0
        while numbers.allSatisfy( { $0.isMultiple(of: 2) }) {
            count += 1
            numbers = numbers.map { $0 / 2 }
        }
        print(count)
    }
}
