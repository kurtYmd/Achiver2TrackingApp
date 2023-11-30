//
//  TaskCardView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 29.11.2023.
//

import SwiftUI

struct TaskCardView: View {
    
    @State var streak: Int = 0
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
                HStack {
                    Text("Title 1")
                        .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Text("\(streak)")
                    Image(systemName: "flame")
                        .font(.footnote.weight(.semibold))
                        .contentTransition(.numericText(value: 0.8))
                }
            HStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: .infinity, height: 150)
            }
            }
            .padding(20)
            .foregroundColor(.white)
            .background(
                Color.indigo
            )
            .mask(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
            )
            .frame(height: 250)
            .padding(20)
        Button(action: {
            addStreak()
        }, label: {
            Text("Complete Task")
        })
    }
    
    func addStreak() {
        withAnimation {
            streak = streak + 1
        }
    }
}

#Preview {
    TaskCardView()
}
