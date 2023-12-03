//
//  SelectTaskCardView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 01.12.2023.
//

import SwiftUI

struct SelectTaskCardView: View {
    var title: String = ""
    
    var body: some View {
        VStack{
            HStack {
                Text(title)
                    .font(.title)
                    .bold()
                    .position(CGPoint(x: 60.0, y: 40.0))
            }
            VStack(alignment: .trailing) {
             Circle()
            }
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Start")
                })
                .frame(width: 100, height: 50)
                
                .background(Color.black)
                .cornerRadius(50)
                
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Pause")
                })
                .frame(width: 100, height: 50)
                .background(Color.black)
                .cornerRadius(50)
            }
            .padding(50)
        }
        .frame(width: 350, height: 600)
        .background(Color.blue)
        .cornerRadius(20)
    }
}

#Preview {
    SelectTaskCardView()
}
