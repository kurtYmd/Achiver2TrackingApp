//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = TaskViewModel()
    @State private var showAddTaskView = false
    
    var body: some View {
            VStack(spacing: 20) {
                Button(action: {
                    showAddTaskView.toggle()
                }, label: {
                    Text("+")
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                })
            }.sheet(isPresented: $showAddTaskView) {
                AddTaskView()
            }
            ScrollView {
                ForEach(vm.savedEntities) { task in
                    SelectTaskCardView(title: task.title ?? "NO NAME")
                }
            }
    }
}

#Preview {
    HomeView()
}
