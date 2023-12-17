//
//  TaskViewModel.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import Foundation
import CoreData

class TaskViewModel: ObservableObject {
    
    let container: NSPersistentContainer
    
    @Published var savedEntities: [TaskEntity] = []
    @Published var completedTasks: [TaskEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "Achiver2TrackingApp")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                print("Unresolved error \(error)")
            }
        }
        fetchTasks()
    }
    
    func fetchTasks() {
        let request = NSFetchRequest<TaskEntity>(entityName: "TaskEntity")
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
    }
    
    func completeTask(task: TaskEntity) {
        
    }
    
    func deleteTask(task: TaskEntity) {
        container.viewContext.delete(task)
        saveData()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchTasks()
        } catch let error {
            print("Error saving. \(error)")
        }
    }
    
    func addTask(title: String) {
        let newTask = TaskEntity(context: container.viewContext)
        newTask.title = title
        saveData()
        fetchTasks()
    }
}
