//
//  2021-05-20_20-46C.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/20.
//

import Foundation

class ABSC {
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
        let marbles = readLine()!.map { String($0) }.map { Int($0) }
        print(marbles.reduce(0) { $0 + $1! })
    }
}
