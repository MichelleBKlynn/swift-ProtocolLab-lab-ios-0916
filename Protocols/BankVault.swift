//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
    
}

extension BankVault: ProvideAccess {
    internal func allowEntryWithPassword(password: [Int]) -> Bool {
        var firstBool = false
        var secondBool = false
        var thirdBool = false
        var finalBool = false
        
        if password.isEmpty {
            firstBool = false
        } else {
            firstBool = true
        }
        
        if password.count > 10 {
            secondBool = false
        } else {
            secondBool = true
        }
        
        for (num, index) in password.enumerated() {
            
            if index % 2 == 0 {
                if num % 2 == 0 {
                    thirdBool = true
                } else {
                    thirdBool = false
                }
            }
        }
        
        if firstBool && secondBool && thirdBool == true {
            finalBool = true
        } else {
            finalBool = false
        }
        
        return finalBool
        
    }
}












