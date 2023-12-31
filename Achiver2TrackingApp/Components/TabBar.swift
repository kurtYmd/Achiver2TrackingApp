//
//  ToolBar.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab  ? 1.25 : 1.0)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: 250, height: 60)
            .background(.black.opacity(0.1))
            .cornerRadius(25)
        }
    }
}

#Preview { 
    TabBar(selectedTab: .constant(.clipboard))
}
