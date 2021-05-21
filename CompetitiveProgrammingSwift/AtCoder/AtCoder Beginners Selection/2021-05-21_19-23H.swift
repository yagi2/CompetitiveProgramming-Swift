//
//  2021-05-21_19-23.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/21.
//

import Foundation

class ABSH {
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
        let N = readInt()
        let mochis = (0..<N).map { _ in readInt() }
        print(Set(mochis).count)
    }
}
