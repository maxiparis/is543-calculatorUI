//
//  ContentView.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/18/24.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @StateObject var vm = CalculatorBrain()
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Toggle(isOn: $vm.soundOn) {
                    Text("App sounds")
                }
            }
            Spacer()
            HStack {
                Spacer()
                Text(vm.digits) //Just a placeholder
                    .font(.system(size: 50, weight: .semibold))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                
            }.padding(.bottom, 20)
            HStack(spacing: 10) {
                OperationButton(vm: vm, symbol: "C")
                OperationButton(vm: vm, symbol: "+")
                OperationButton(vm: vm, symbol: "-")
                OperationButton(vm: vm, symbol: "/")
            }
            HStack {
                NumberButton(vm: vm, symbol: "7")
                NumberButton(vm: vm, symbol: "8")
                NumberButton(vm: vm, symbol: "9")
                OperationButton(vm: vm, symbol: "*")
            }
            HStack {
                NumberButton(vm: vm, symbol: "4")
                NumberButton(vm: vm, symbol: "5")
                NumberButton(vm: vm, symbol: "6")
                OperationButton(vm: vm, symbol: "=")
            }
            HStack {
                NumberButton(vm: vm, symbol: "1")
                NumberButton(vm: vm, symbol: "2")
                NumberButton(vm: vm, symbol: "3")
                OperationButton(vm: vm, symbol: "0")
            }
        }.padding(40)
    }
}

#Preview {
    ContentView()
}

struct NumberButton: View {
    @State var player: SoundPlayer = SoundPlayer(player: AVAudioPlayer())
    @ObservedObject var vm: CalculatorBrain
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
        if (vm.soundOn) {
            player.playSound(named: "button.mp3")
            print("Playing sound.")
        } else {
            print("No sound.")
        }
        vm.tapped(number: symbol)
    }
}

struct OperationButton: View {
    @State var player = SoundPlayer(player: AVAudioPlayer())
    @ObservedObject var vm: CalculatorBrain
    public var symbol: String
    
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
        if (vm.soundOn) {
            player.playSound(named: "button.mp3")
            print("Playing sound.")
        } else {
            print("No sound.")
        }
    }
}

//enum NumberSymbol: String {
//    case one = "1"
//    case two = "2"
//    case three = "3"
//    case four = "4"
//    case five = "5"
//    case six = "6"
//    case seven = "7"
//    case eight = "8"
//    case two = "9"
//    case zero = "0"
//}
