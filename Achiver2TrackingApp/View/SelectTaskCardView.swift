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
        VStack {
            HStack {
                Text(title)
                    .font(.title)
                    .bold()
                    .position(CGPoint(x: 60.0, y: 40.0))
            }
            VStack(alignment: .trailing) {
                TimerPie(endAngle: .degrees(90))
                    .padding()
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
        }
        .padding(20)
        .frame(width: 300, height: 600)
        .background(Color.indigo)
        .cornerRadius(20)
        .shadow(color: .black, radius: 20)
    }
}

#Preview {
    SelectTaskCardView()
}
