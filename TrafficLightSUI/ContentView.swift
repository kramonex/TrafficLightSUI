//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by kramonex on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tittleButton = "Start"
    @State private var redLight = CircleView(color: .red, transparency: 0.3)
    @State private var yellowLight = CircleView(color: .yellow, transparency: 0.3)
    @State private var greenLight = CircleView(color: .green, transparency: 0.3)
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
            redLight.transparency = 1
            greenLight.transparency = 0.3
            currentLight = .yellow
        case .yellow:
            yellowLight.transparency = 1
            redLight.transparency = 0.3
            currentLight = .green
        case .green:
            greenLight.transparency = 1
            yellowLight.transparency = 0.3
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

 //MARK:
