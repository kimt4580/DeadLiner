//
//  SwiftUIView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ListView: View {
  @ObservedObject private(set) var listViewModel: ListViewModel
  
  var body: some View {
    List {
      ForEach(listViewModel.userData) { task in
        ListCellView(listCellViewModel: ListCellViewModel(task: task, withService: listViewModel.service))
      }
      .onDelete { index in
        listViewModel.deleteCell(index: index)
      }
    }
    .listStyle(.grouped)
    .scrollContentBackground(.hidden)
  }
}

//struct ListView_Previews: PreviewProvider {
//  static var previews: some View {
//    ListView()
//  }
//}
