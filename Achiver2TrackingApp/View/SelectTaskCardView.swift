//
//  SelectTaskCardView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 01.12.2023.
//

import SwiftUI

struct SelectTaskCardView: View {
    var body: some View {
        ZStack{
                Text("Task name")
                    .font(.title)
                    .bold()
                    .padding()
        }
        .frame(width: 350, height: 600)
        .background(Color.blue)
        .cornerRadius(20)
    }
}

#Preview {
    SelectTaskCardView()
}
