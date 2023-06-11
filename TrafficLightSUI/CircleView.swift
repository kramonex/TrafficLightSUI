//
//  CircleView.swift
//  TrafficLightSUI
//
//  Created by kramonex on 08.06.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(lineWidth: 3))
            .shadow(radius: 10)
            
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 0.3)
    }
}
