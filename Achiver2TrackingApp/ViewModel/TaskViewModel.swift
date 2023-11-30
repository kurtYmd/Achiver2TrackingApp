//
//  TaskViewModel.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import Foundation
import CoreData

class TaskViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var color: String = ""
    @Published var streak: Int = 0
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
}
