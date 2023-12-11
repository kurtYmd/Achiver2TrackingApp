//
//  TaskCategoryViewModel.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 11.12.2023.
//

import Foundation
import CoreData

class TaskCategoryViewModel: ObservableObject {
    
    let container: NSPersistentContainer
    
    @Published var savedEntities: [TaskCategoryEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "Achiver2TrackingApp")
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error {
                print("Unresolved error \(error)")
            }
        }
        fetchCategories()
    }
    
    func fetchCategories() {
        let request = NSFetchRequest<TaskCategoryEntity>(entityName: "TaskCategoryEntity")
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching. \(error)")
        }
    }
    
    func deleteCategory(category: TaskCategoryEntity) {
        container.viewContext.delete(category)
        saveData()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchCategories()
        } catch let error {
            print("Error saving. \(error)")
        }
    }
    
    func addTask(name: String) {
        let newCategory = TaskCategoryEntity(context: container.viewContext)
        newCategory.name = name
        saveData()
        fetchCategories()
    }
}
