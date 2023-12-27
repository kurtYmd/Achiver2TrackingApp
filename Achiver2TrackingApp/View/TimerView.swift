//
//  TimerView.swift
//  Achiver2TrackingApp
//
//  Created by Bohdan on 27.12.2023.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var model = TimerViewModel()

    var body: some View {
        HStack() {
            TimePickerView(title: "hours",
                range: model.hoursRange,
                binding: $model.selectedHoursAmount)
            TimePickerView(title: "min",
                range: model.minutesRange,
                binding: $model.selectedMinutesAmount)
            TimePickerView(title: "sec",
                range: model.secondsRange,
                binding: $model.selectedSecondsAmount)
        }
        .padding(.all, 32)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .foregroundColor(.black)
    }
}

#Preview {
    TimerView()
}
