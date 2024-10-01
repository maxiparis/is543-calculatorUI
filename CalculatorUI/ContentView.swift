//
//  ContentView.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State var soundOn: Bool = false
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Toggle(isOn: $soundOn) {
                    Text("App sounds")
                }
            }
            Spacer()
            HStack {
                Spacer()
                Text("12345") //Just a placeholder
                    .font(.system(size: 50, weight: .semibold))
            }.padding(.bottom, 20)
            HStack(spacing: 10) {
                OperationButton(symbol: "C")
                OperationButton(symbol: "+")
                OperationButton(symbol: "-")
                OperationButton(symbol: "/")
            }
            HStack {
                NumberButton(symbol: "7")
                NumberButton(symbol: "8")
                NumberButton(symbol: "9")
                OperationButton(symbol: "*")
            }
            HStack {
                NumberButton(symbol: "4")
                NumberButton(symbol: "5")
                NumberButton(symbol: "6")
                OperationButton(symbol: "=")
            }
            HStack {
                NumberButton(symbol: "1")
                NumberButton(symbol: "2")
                NumberButton(symbol: "3")
                OperationButton(symbol: "0")
            }
        }.padding(40)
    }
}

#Preview {
    ContentView()
}

struct NumberButton: View {
    @State var player: SoundPlayer = SoundPlayer(player: AVAudioPlayer())
    var symbol: String
    
    var body: some View {
        HStack(spacing: 10) {
            Button {
                buttonTapped()
            } label: {
                Text(symbol)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 80, height: 80)
            }
            .background(Color.blue)
            .cornerRadius(50)
        }
    }
    
    func buttonTapped() {
        player.playSound(named: "button.mp3")
    }
}

struct OperationButton: View {
    @State var player = SoundPlayer(player: AVAudioPlayer())
    var symbol: String
    
    var body: some View {
        HStack(spacing: 10) {
            Button {
                buttonTapped()
            } label: {
                Text(symbol)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .frame(width: 80, height: 80)
            }
            .background(Color.cyan)
            .cornerRadius(50)
        }
    }
    
    func buttonTapped() {
        player.playSound(named: "button.mp3")
    }
}
