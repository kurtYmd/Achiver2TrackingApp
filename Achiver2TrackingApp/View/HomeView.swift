//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 10.12.2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var vm = TaskViewModel()
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 20) {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("+")
                        .font(.system(size: 40))
                        .foregroundColor(.indigo)
                })
            }
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("Tasks to do")
                                .font(.caption)
                                .bold()
                        }
                        Text(verbatim: "\(vm.savedEntities.count)")
                            .font(.system(size: 40))
                            .bold()
                    }
                    .padding(20)
                    .background(.indigo)
                    .clipShape(.rect(cornerRadius: 20))
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("First task")
                                .font(.caption)
                                .bold()
                        }
                        Text(verbatim: "\(vm.savedEntities.first?.title ?? "NO NAME")")
                            .font(.system(size: 40))
                            .bold()
                    }
                    .padding(20)
                    .background(.indigo)
                    .clipShape(.rect(cornerRadius: 20))
                }
                .padding()
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("First task")
                            .font(.caption)
                            .bold()
                    }
                    Text(verbatim: "\(vm.savedEntities.first?.title ?? "NO NAME")")
                        .font(.system(size: 40))
                        .bold()
                }
                .frame(width: 250, height: 100)
                .background(.indigo)
                .clipShape(.rect(cornerRadius: 20))
            }
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
