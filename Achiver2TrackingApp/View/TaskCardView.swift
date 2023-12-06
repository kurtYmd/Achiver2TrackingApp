//
//  TaskCardView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 29.11.2023.
//

import SwiftUI

struct TaskCardView: View {
    
    @EnvironmentObject var vm: TaskViewModel
    //var streak: Int = 0
    var title: String = ""
    //var color: String = ""
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12) {
                HStack {
                    Text(title)
                        .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    Text("0")
                    Image(systemName: "flame")
                        .font(.footnote.weight(.semibold))
                        .contentTransition(.numericText(value: 0.8))
                }
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: .infinity, height: 150)
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(
            Color.indigo )
            .mask(
                RoundedRectangle(cornerRadius: 15, style: .continuous)
            )
            .frame(height: 250)
            .padding()
            .shadow(color: .black ,radius: 10)
    }
}

#Preview {
    TaskCardView()
}
