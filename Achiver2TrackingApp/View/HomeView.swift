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
        VStack (alignment: .trailing) {
            VStack  {
                Button(action: {
                    
                }, label: {
                    Text("+")
                        .font(.system(size: 40))
                        .foregroundColor(.indigo)
            })
            }
            VStack(alignment: .leading, spacing: 16) {
                Text(verbatim: "\(vm.savedEntities.count)")
                    .font(.system(size: 40))
                    .bold()
                    .padding(40)
            }
            .padding(16)
            .background(.indigo)
            .clipShape(.rect(cornerRadius: 20))
        }
    }
}

#Preview {
    HomeView()
}
