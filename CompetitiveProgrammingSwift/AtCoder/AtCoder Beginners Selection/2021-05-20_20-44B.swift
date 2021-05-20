//
//  2021-05-20_20-44B.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/20.
//

import Foundation

class ABSB {
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
        let (a, b) = readTwoInts()
        if (a * b).isMultiple(of: 2) {
            print("Even")
        } else {
            print("Odd")
        }
    }
}
