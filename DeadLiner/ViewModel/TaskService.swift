//
//  TaskService.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/08.
//

import Foundation

class TaskService: ObservableObject {
  var service: TaskManagerService
  
  init(withService: TaskManagerService) {
    self.service = withService
  }
}
