//
//  DatePickerView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct DatePickerView: View {
  @State var date = Date()
  
  var body: some View {
    VStack {
      Text("Title")
        .font(.system(size: 18))
        .padding()
      Text("현재 목표 시간 : 2023-05-11 15:00")
      DatePicker (
        "",
        selection: $date,
        in: Date()...,
        displayedComponents: [.date, .hourAndMinute]
      )
      .datePickerStyle(.graphical)
      .background(Color.clear)
      .padding()
    }
  }
}

struct DatePickerView_Previews: PreviewProvider {
  static var previews: some View {
    DatePickerView()
  }
}
