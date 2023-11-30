//
//  HomeView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { task in
                    Text("Card Task View")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
