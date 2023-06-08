//
//  CircleView.swift
//  TrafficLightSUI
//
//  Created by kramonex on 08.06.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color).contrast(0.3)
            .frame(width: 100)
            .overlay(Circle().stroke(lineWidth: 3))
            .shadow(radius: 10)
            
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red)
    }
}