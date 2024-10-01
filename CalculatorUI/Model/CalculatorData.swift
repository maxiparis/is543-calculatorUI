//
//  CalculatorData.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/30/24.
//

import Foundation

struct CalculatorData {
    var digits = ""
    
    mutating func addDigit(_ number: String) {
        digits.append(number)
    }
}
