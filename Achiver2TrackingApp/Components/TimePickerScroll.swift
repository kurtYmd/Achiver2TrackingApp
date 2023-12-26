//
//  TimePickerScroll.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 26.12.2023.
//

import SwiftUI


struct TimePickerScroll: View {
    @State private var hours = 0
    @State private var minutes = 0
    @State private var seconds = 0
    
    
    var body: some View {
        HStack {
            VStack {
                Text("hours")
                ScrollView (showsIndicators: false) {
                    ForEach(0..<10) { time in
                        Text("\(time)")
                            .onTapGesture {
                            if time >= hours {
                                hours = time
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
            }
            VStack {
                Text("minutes")
                ScrollView (showsIndicators: false) {
                    ForEach(0..<10) { time in
                            Text("\(time)")
                            .onTapGesture {
                            if time >= minutes {
                                minutes = time
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
            }
            VStack {
                Text("seconds")
                ScrollView (showsIndicators: false) {
                    ForEach(0..<10) { time in
                            Text("\(time)")
                            .onTapGesture {
                            if time >= minutes {
                                minutes = time
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
            }
        }
        .padding()
    }
}

#Preview {
    TimePickerScroll()
}
