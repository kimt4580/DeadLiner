//
//  ListCellView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import Foundation

final class ListCellViewModel: TaskService {
  @Published var isListRowTapped = false
  var task: Task
  
  init(isListRowTapped: Bool = false, task: Task, withService: TaskManagerService) {
    self.isListRowTapped = isListRowTapped
    self.task = task
    super.init(withService: withService)
  }
  
  func listRowTapped() {
    isListRowTapped.toggle()
  }
}
