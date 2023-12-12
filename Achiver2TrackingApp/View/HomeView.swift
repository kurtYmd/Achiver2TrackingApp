//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 10.12.2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm = TaskViewModel()
    @State private var isAddTaskViewOpen = false

    var body: some View {
        AddTaskButton()
            .onTapGesture {
                withAnimation(.spring(duration: 5)) {
                    isAddTaskViewOpen.toggle()
                    print(isAddTaskViewOpen)
                }
            }
        if isAddTaskViewOpen == true {
            AddTaskView()
        }
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("Tasks to do")
                            .font(.caption)
                            .bold()
                    }
                    Text(verbatim: "\(vm.savedEntities.count)")
                        .font(.system(size: 40))
                        .bold()
                    }
                    .padding(20)
                    .background(.indigo)
                    .clipShape(.rect(cornerRadius: 20))
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("First task")
                            .font(.caption)
                            .bold()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    Text(verbatim: "\(vm.savedEntities.first?.title ?? "NO NAME")")
                        .font(.system(size: 40))
                        .bold()
                }
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(.indigo)
                .clipShape(.rect(cornerRadius: 20))
            }
            .frame(maxWidth: .infinity, maxHeight: 100)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    HomeView()
}
