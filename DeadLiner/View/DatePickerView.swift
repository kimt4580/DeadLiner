//
//  DatePickerView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct DatePickerView: View {
  @Binding var taskTitle: String
  @Binding var taskBody: String
  @Binding var taskDate: Date
  
  var body: some View {
    VStack {
      TextField("Title", text: $taskTitle)
        .font(.system(size: 18))
        .padding()
      DatePicker (
        "",
        selection: $taskDate,
        in: Date()...,
        displayedComponents: [.date, .hourAndMinute]
      )
      .datePickerStyle(.graphical)
      .background(Color.clear)
     TextEditor(text: $taskBody)
        .background(Color.clear)
        .foregroundColor(Color.black)
        .border(.black)
        .padding()
    }
  }
}

//struct DatePickerView_Previews: PreviewProvider {
//  static var previews: some View {
//    DatePickerView()
//  }
//}
