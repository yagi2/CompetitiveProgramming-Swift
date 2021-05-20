//
//  2021-05-20_21-08F.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/20.
//

import Foundation

class ABSF {
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
        let inputs = readInts()
        let N = inputs[0]
        let A = inputs[1]
        let B = inputs[2]
        
        var sum = 0
        for i in 1...N {
            let tmp = String(i).reduce(0) { $0 + Int(String($1))! }
            if A <= tmp && tmp <= B {
                sum += i
            }
        }
        print(sum)
    }
}
