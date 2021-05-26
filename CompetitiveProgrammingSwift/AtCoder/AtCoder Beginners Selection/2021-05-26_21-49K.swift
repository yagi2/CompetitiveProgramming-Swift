//
//  2021-05-26_21-49K.swift
//  CompetitiveProgrammingSwift
//
//  Created by Itsuki Aoyagi on 2021/05/26.
//

import Foundation

class ABSK {
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
    func readThreeInts() -> (t: Int, x: Int, y: Int) {
        let ints = readInts()
        return (t: ints[0], x: ints[1], y: ints[2])
    }
    
    func main() {
        let N = readInt()
        let plans = (0..<N).map { _ in readThreeInts() }
        
        var last: (t: Int, x: Int, y: Int) = (t: 0, x: 0, y: 0)
        
        for plan in plans {
            let time = plan.t - last.t
            let distance = abs(last.x - plan.x) + abs(last.y - plan.y)
            
            let remainTime = time - distance
            
            if remainTime < 0 || !remainTime.isMultiple(of: 2) {
                print("No")
                return
            }
            
            last = plan
        }
        
        print("Yes")
    }
}
