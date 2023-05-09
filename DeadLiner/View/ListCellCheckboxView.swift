//
//  ListCellCheckboxView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/04.
//

import SwiftUI

struct ListCellCheckboxView: View {
  @ObservedObject private(set) var listCellCheckboxViewModel: ListCellCheckboxViewModel
  
    var body: some View {
      Button {
        listCellCheckboxViewModel.checkBoxTapped()
      } label: {
        Image(systemName: "checkmark.circle")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipShape(Circle())
          .frame(width: 60)
          .padding()
      }
    }
}

struct ListCellCheckboxView_Previews: PreviewProvider {
    static var previews: some View {
      ListCellCheckboxView(listCellCheckboxViewModel: ListCellCheckboxViewModel(withService: TaskManagerService()))
    }
}
