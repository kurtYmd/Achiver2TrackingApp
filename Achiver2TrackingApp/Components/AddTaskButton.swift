//
//  AddTaskButton.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 12.12.2023.
//

import SwiftUI

struct AddTaskButton: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("+")
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
            })
            .padding()
            .frame(maxWidth: .infinity, alignment: .topTrailing)
        }
    }
}

#Preview {
    AddTaskButton()
}
