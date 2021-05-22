//
//  2021-05-22_17-18I.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/22.
//

import Foundation

class ABSI {
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
        let (N, Y) = readTwoInts()
        for i in 0...N {
            for j in 0...(N - i) {
                let k = N - i - j
                if Y == (i * 10000) + (j * 5000) + (k * 1000) {
                    print(i, j, k)
                    return
                }
            }
        }
        
        print(-1, -1, -1)
    }
}
