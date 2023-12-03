//
//  AddTaskView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 03.12.2023.
//

import SwiftUI

struct AddTaskView: View {
    
    @StateObject var vm = TaskViewModel()
    @State var title: String = ""
    //@State private var color: Color = .blue
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.largeTitle).bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            // COLOR PICKER
            TextField("Enter your task", text: $title)
                .textFieldStyle(.roundedBorder)
            VStack {
                Button {
                    guard !title.isEmpty else { return }
                    vm.addTask(title: title)
                    title = ""
                } label: {
                    Text("Add Task")
                }
            }
            // Add Timer functionality to set a timer for a new task
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    AddTaskView()
}
