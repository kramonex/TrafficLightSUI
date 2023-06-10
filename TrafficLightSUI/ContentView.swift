//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by kramonex on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var redLight = CircleView(color: .red, transparency: 0.3)
    @State private var yellowLight = CircleView(color: .yellow, transparency: 0.3)
    @State private var greenLight = CircleView(color: .green, transparency: 0.3)
    
    @State private var tittleButton = "Start"
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight
            Spacer()
            Button(action: startButtonPressed) {
                Text(tittleButton)
                    .font(.title)
            }
            .frame(width: 120, height: 50)
            .foregroundColor(.white)
            .background(.blue)
            .overlay(Capsule().stroke(lineWidth: 3))
            .clipShape(Capsule())
            
        }
        .padding()
        
        }
    private func startButtonPressed() {
        if tittleButton == "Start" {
            tittleButton = "Next"
        }
        
        switch currentLight {
        case .red:
            redLight.transparency = lightIsOn
            greenLight.transparency = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowLight.transparency = lightIsOn
            redLight.transparency = lightIsOff
            currentLight = .green
        case .green:
            greenLight.transparency = lightIsOn
            yellowLight.transparency = lightIsOff
            currentLight = .red
        }
    }
    private enum CurrentLight {
        case red, yellow, green
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

