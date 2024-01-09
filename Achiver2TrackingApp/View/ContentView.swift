//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm = TaskViewModel()
    @State private var selectedTab: Tab = .house
    @State private var showAddTaskView = false
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                    if selectedTab == .doc {
                            TabView {
                                ForEach(vm.savedEntities) { task in
                                    TaskCardView(vm: vm, task: task)
                                }
                            }
                            .tabViewStyle(.page(indexDisplayMode: .never))
                    } else if selectedTab == .house {
                        HomeView()
                    }
                    else if selectedTab == .clipboard {
                        AddTaskView(vm: vm)
                    }
                }
            HStack (alignment: .bottom) {
                TabBar(selectedTab: $selectedTab)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.bottom)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
