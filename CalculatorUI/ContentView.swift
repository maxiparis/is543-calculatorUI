//
//  ContentView.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("1324.4") //Just a placeholder
                    .font(.largeTitle)
            }
            Spacer()
        }.padding(40)
    }
}

#Preview {
    ContentView()
}
