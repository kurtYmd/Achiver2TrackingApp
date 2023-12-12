//
//  AddTaskView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 03.12.2023.
//

import SwiftUI

struct AddTaskView: View {
    
    @ObservedObject var vm = TaskViewModel()
    @State var title: String = ""
    @State private var selectedPriority = TaskPriority.high
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
                HStack(alignment: .bottom) {
                    Button {
                        guard !title.isEmpty else { return }
                        vm.addTask(title: title)
                        title = ""
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                            .font(.title).bold()
                    }
                }
                .padding(16)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 50))
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 550, alignment: Alignment.bottom)
            // Add Timer functionality to set a timer for a new task
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    AddTaskView()
}
