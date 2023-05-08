//
//  ListViewModel.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/08.
//

import Foundation

final class ListViewModel: TaskService {
  @Published var userData: [Task] = []
  
  override init(withService: TaskManagerService) {
    super.init(withService: withService)
  }
  
  func deleteCell(index: IndexSet) {
    index.forEach { index in
      let taskToDelete = userData[index]
      service.delete(task: taskToDelete)
    }
  }
}
