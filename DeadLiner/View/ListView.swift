//
//  SwiftUIView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ListView: View {
    var body: some View {
      List {
        ListCellView()
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
