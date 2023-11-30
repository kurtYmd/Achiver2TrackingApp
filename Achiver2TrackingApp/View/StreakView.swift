//
//  StreakView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 30.11.2023.
//

import SwiftUI

struct StreakView: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(0..<10) { task in
                    TaskCardView()
                }
            }
        }
    }
}

#Preview {
    StreakView()
}
