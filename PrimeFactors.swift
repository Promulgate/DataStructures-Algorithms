//
//  PrimeFactors.swift
//  
//
//  Created by Eric Chang on 4/12/17.
//
//

import Foundation

func findPrimeFactors(_ number: Int) -> [Int] {
    var num = number
    var primes = [Int]()
    var div = 2
    
    while div * div <= num {
        while num % div == 0 {
            primes.append(div)
            num /= div
        }
        div += 1
    }
    
    if num > 1 {
        primes.append(num)
    }
    return primes
}

print(findPrimeFactors(64))
print(findPrimeFactors(999))
print(findPrimeFactors(5436789076598767))

/*
 Output:
    [2, 2, 2, 2, 2, 2]
    [3, 3, 3, 37]
    [137, 761, 52147952431]
 
 runtime: O(sqrt(n))
 */
