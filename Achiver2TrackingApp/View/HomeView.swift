//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = TaskViewModel()
    @State private var selectedTab: Tab = .paperplane
    @State private var showAddTaskView = false
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    if selectedTab == .doc {
                        ScrollView() {
                            ForEach(vm.savedEntities) { task in
                                TaskCardView(title: task.title ?? "NO N")
                            }
                        }
                    } else if selectedTab == .folder {
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(vm.savedEntities) { task in
                                    SelectTaskCardView(title: task.title ?? "NO NAME")
                                }
                            }
                            .padding()
                        }
                    } else if selectedTab == .paperplane {
                        AddTaskView()
                    }
                }
            }
        }
        TabBar(selectedTab: $selectedTab)
    }
}

#Preview {
    HomeView()
}
