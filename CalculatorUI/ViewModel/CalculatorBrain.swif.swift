//
//  CalculatorBrain.swif.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/30/24.
//

import Foundation

class CalculatorBrain: ObservableObject {
    //MARK: - Variables
    @Published var digits = ""
    
    @Published var soundOn: Bool = false
    private var model = CalculatorData()
    
    //MARK: - User intents
    func tapped(number: String) {
        //TODO
        model.addDigit(number)
        digits = model.digits
        print("vm.tapped called ✅")
    }
    
    func functionTapped(_ function: String) {
        //TODO
    }
}
