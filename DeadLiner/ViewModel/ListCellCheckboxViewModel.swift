//
//  ListCellCheckboxViewModel.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/04.
//

import Foundation

final class ListCellCheckboxViewModel: TaskService {
  @Published var isCheckBoxTapped = false
  
  func checkBoxTapped() {
    isCheckBoxTapped.toggle()
  }
  
}
