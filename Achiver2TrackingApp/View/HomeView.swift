//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var vm = TaskViewModel()
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                TextField("Add task", text: $textFieldText)
                    .font(.headline)
                    .padding(.leading)
                    .frame(height: 40)
                    .background(Color.gray)
                    .padding(.horizontal)
                
                Button(action: {
                    vm.addTask(context: <#T##NSManagedObjectContext#>)
                }, label: {
                    /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                })
                
            }
            List {
                ForEach(vm.savedEntities) { task in
                    Text("Card Task View")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
