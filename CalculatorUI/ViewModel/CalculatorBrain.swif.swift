//
//  CalculatorBrain.swif.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/30/24.
//

import Foundation

class CalculatorBrain: ObservableObject {
    //MARK: - Variables
    
    @Published var soundOn: Bool = false
    private var model = CalculatorData()
    
    //MARK: - User intents
    func numberTapped(_ number: String) {
        //TODO
    }
    
    func functionTapped(_ function: String) {
        //TODO
    }
}
