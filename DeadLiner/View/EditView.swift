//
//  EditView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/08.
//

import SwiftUI

struct EditView: View {
  @ObservedObject private(set) var editViewModel: EditViewModel
  
    var body: some View {
      DatePickerView(taskTitle:$editViewModel.title , taskBody: $editViewModel.body, taskDate: $editViewModel.date)
        .onDisappear {
          editViewModel.title = ""
          editViewModel.body = ""
          editViewModel.date = Date()
        }
    }
}

//struct EditView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditView()
//    }
//}
