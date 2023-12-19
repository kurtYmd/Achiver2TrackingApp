//
//  Timer.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 16.12.2023.
//

import SwiftUI

struct TimerPie: View {
    @State private var timeRemaining: TimeInterval = 10
    @State private var timer: Timer?
    @State private var isRunning: Bool = false
    
    var body: some View {
            VStack(alignment: .center) {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 20)                        
                        .opacity(0.3)
                        Circle()
                            .trim(from: 0, to: CGFloat(1 - (timeRemaining / 10)))
                            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                            .rotationEffect(.degrees(-90))
                    Text(formattedTime())
                        .contentTransition(.numericText(value: 0))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                HStack {
                    Button {
                            isRunning.toggle()
                            if isRunning {
                                startTimer()
                            } else {
                                stopTimer()
                            }
                    } label: {
                        Image(systemName: isRunning ? "stop.fill" : "play.fill")
                            .foregroundStyle(.foreground)
                            .frame(width: 50, height: 50)
                    }
                }
            }
            .frame(minWidth: 250, minHeight: 250)
            .padding(50)
    }
    private func formattedTime() -> String {
        let minutes = Int(timeRemaining) / 60
        let second = Int(timeRemaining) % 60
        return String(format: "%02d:%02d", minutes, second)
    }
    
    private func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            withAnimation(.spring(duration: 1)) {
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    stopTimer()
                }
            }
        }
    }
    
    private func stopTimer() {
        withAnimation(.spring(duration: 1)) {
            isRunning = false
            timer?.invalidate()
            timeRemaining = 10
        }
    }
}

#Preview {
    TimerPie()
}
