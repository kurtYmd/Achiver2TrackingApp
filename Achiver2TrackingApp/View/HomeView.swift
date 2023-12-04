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
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            
                        }
                    }
                }
            }
        }
        TabBar(selectedTab: $selectedTab)
//        VStack(spacing: 20) {
//            Button(action: {
//                showAddTaskView.toggle()
//            }, label: {
//                Text("+")
//                    .font(.title)
//                    .bold()
//                    .foregroundColor(.black)
//            })
//        }.sheet(isPresented: $showAddTaskView) {
//            AddTaskView()
//        }
//        TabView {
//            ScrollView {
//                ForEach(vm.savedEntities) { task in
//                    TaskCardView(title: task.title ?? "NO NAME")
//                }
//            }
//            .tabItem {
//                Label("Streak", systemImage: "calendar")
//            }
//            
//            ScrollView {
//                ForEach(vm.savedEntities) { task in
//                    SelectTaskCardView(title: task.title ?? "NO NAME")
//                }
//            }.tabItem {
//                Label("Tasks", systemImage: "doc.plaintext.fill")
//            }
//        }
    }
}

#Preview {
    HomeView()
}
