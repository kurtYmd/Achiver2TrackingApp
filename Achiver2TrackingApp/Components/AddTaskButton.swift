//
//  AddTaskButton.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct AddTaskButton: View {
    var body: some View {
        ZStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.title).bold()
            })
        }
        .frame(width: 60, height: 60)
        .background(Color.blue)
        .cornerRadius(1)
    }
}

#Preview {
    AddTaskButton()
}
