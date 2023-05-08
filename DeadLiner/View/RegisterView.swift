//
//  RegisterView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/08.
//

import SwiftUI

struct RegisterView: View {
  @ObservedObject private(set) var registerViewModel: RegisterViewModel
  
    var body: some View {
      DatePickerView(
        taskTitle:$registerViewModel.title,
        taskBody: $registerViewModel.body,
        taskDate: $registerViewModel.date
      )
        .onDisappear {
          registerViewModel.title = ""
          registerViewModel.body = ""
          registerViewModel.date = Date()
        }
    }
}

//struct RegisterView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterView()
//    }
//}
