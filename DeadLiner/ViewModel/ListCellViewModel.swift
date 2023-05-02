//
//  ListCellView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import Foundation

final class ListCellViewModel: ObservableObject {
  @Published var isButtonTapped = false
  
  func buttonTapped() {
    isButtonTapped.toggle()
  }
  
}
