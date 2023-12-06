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
                                TaskCardView(title: task.title ?? "NO NAME")
                            }
                            
                        }
                    } else if selectedTab == .folder {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 50) {
                                ForEach(vm.savedEntities) { task in
                                    SelectTaskCardView(title: task.title ?? "NO NAME")
                                        .onTapGesture {
                                            withAnimation(.easeIn(duration: 1)) {
                                                
                                            }
                                        }
                                }
                            }
                            .padding(50)
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
