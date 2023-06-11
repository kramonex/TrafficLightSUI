//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by kramonex on 08.06.2023.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    
    @State private var tittleButton = "Start"
    @State private var currentLight = CurrentLight.off
    
    var body: some View {
        VStack {
            CircleView(color: .red, opacity: currentLight == .red ? 1 : 0.3)
            CircleView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
            CircleView(color: .green, opacity: currentLight == .green ? 1 : 0.3)
            
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
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

