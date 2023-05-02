//
//  SwiftUIView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ListView: View {
  @State var date = Date()
  
  var body: some View {
    List {
      ListCellView(date: $date, listCellViewModel: ListCellViewModel())
    }
    .listStyle(.grouped)
    .scrollContentBackground(.hidden)
  }
}

struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView()
  }
}
