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

    init() {
        container = NSPersistentContainer(name: "Achiver2TrackingApp")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error{
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

    
    @Published var title: String = ""
    @Published var color: String = ""
    @Published var streak: Int = 0
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchTasks()
        } catch let error {
            print("Error saving. \(error)")
        }
    }

    func addTask(context:NSManagedObjectContext) -> Bool {
        let newTask = TaskEntity(context: context)
        newTask.title = title
        newTask.streak = 0
        newTask.color = color
        do {
            try context.save()
            return true
        } catch {
            print("Error saving context: \(error)")
            return false
        }
    }
    func deleteTask(task: TaskEntity, context:NSManagedObjectContext) -> Bool {
        context.delete(task)
        do {
            try context.save()
            return true
        } catch {
            print("\(error)")
            return false
        }
    }
}
