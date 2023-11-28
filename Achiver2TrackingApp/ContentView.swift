//
//  ContentView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 27.11.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        entity: TaskEntity.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \TaskEntity.title, ascending: true)])
    var tasks: FetchedResults<TaskEntity>
    
    @State var textFieldTaskText: String = ""

    var body: some View {
        NavigationView {
            
            
            List {
                VStack {
                    TextField("Add Task...", text: $textFieldTaskText)
                        .font(.headline)
                        .padding(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .cornerRadius(5)
                        .padding(.horizontal)
                    
                    Button(action: {
                        addItem()
                    }, label: {
                        Text("Add")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                    .padding(.horizontal)
                }
                ForEach(tasks) { task in
                    Text(task.title ?? "NO TASK NAME")
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("My Tasks")
        }
    }

    private func addItem() {
        withAnimation {
            let newTask = TaskEntity(context: viewContext)
            newTask.title = textFieldTaskText
            saveItem()
            textFieldTaskText = ""
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            guard let index = offsets.first else { return }
            let taskEntity = tasks[index]
            viewContext.delete(taskEntity)
            saveItem()
        }
    }

    
    private func saveItem() {
        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(error), \(nsError.userInfo)")
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
