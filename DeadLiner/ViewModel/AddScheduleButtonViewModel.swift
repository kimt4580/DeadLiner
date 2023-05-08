//
//  AddScheduleButtonViewModel.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/03.
//

import Foundation

final class AddScheduleButtonViewModel: TaskService {
  @Published var isAddButtonTapped = false
  
  func addButtonTapped() {
    isAddButtonTapped.toggle()
  }
}
