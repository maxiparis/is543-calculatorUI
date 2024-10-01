//
//  SoundPlayer.swift
//  CalculatorUI
//
//  Created by Maximiliano París Gaete on 9/30/24.
//
import AVFoundation

struct SoundPlayer {
    var player: AVAudioPlayer?

    mutating func playSound(named soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType: nil) else {
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            player?.play()
            print("played!")
        } catch {
            // Ignore -- the sound just won't play
            print("it wont play")
        }
    }
}
