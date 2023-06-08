//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by kramonex on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    
   @State private var tittleButton = "Start"
    
    var body: some View {
        VStack {
            CircleView(color: .red)
            CircleView(color: .yellow)
            CircleView(color: .green)
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
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 //MARK:
