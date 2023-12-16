//
//  Timer.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 16.12.2023.
//

import SwiftUI

struct TimerPie: View {
    @State private var timeRemaining: TimeInterval = 10
    @State private var timer: TimerPie?
    @State private
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 20)
                        .opacity(0.3)
                    Circle()
                        
                }
            }
        }
    }
}

#Preview {
    TimerPie()
}
