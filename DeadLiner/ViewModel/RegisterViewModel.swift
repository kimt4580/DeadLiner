//
//  RegisterViewModel.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/08.
//

import Foundation

final class RegisterViewModel: TaskService {
  @Published var title: String = ""
  @Published var body: String = ""
  @Published var date: Date = Date()
  
  func sheetWillDisappear() {
    self.service.create(Task(title: title, date: date, body: body))
  }
}
