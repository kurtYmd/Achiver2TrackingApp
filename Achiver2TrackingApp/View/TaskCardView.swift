//
//  TaskCardView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 01.12.2023.
//

import SwiftUI

struct TaskCardView: View {
    @ObservedObject var vm: TaskViewModel
    var task: TaskEntity
    
    var body: some View {
        VStack {
            HStack {
                Text(task.title ?? "")
                    .font(.title)
                    .bold()
                    .position(CGPoint(x: 60.0, y: 40.0))
            }
            TimerPie()
                    .padding()
            HStack {
                Button {
                    vm.completeTask(task: task)
                } label: {
                    Image(systemName: "checkmark")
                }

                Button(action: {
                    vm.deleteTask(task: task)
                }, label: {
                    Image(systemName: "trash.fill")
                        .foregroundColor(.white)
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
