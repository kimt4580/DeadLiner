//
//  ListCellView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ListCellView: View {
  @ObservedObject private(set) var listCellViewModel: ListCellViewModel
  
  var body: some View {
    Section {
      Button {
        listCellViewModel.listRowTapped()
      } label: {
        HStack(alignment: .center) {
          
          ListCellCheckboxView(
            listCellCheckboxViewModel: ListCellCheckboxViewModel(
              withService: TaskManagerService()
            )
          )
          
          VStack(alignment: .leading) {
            Text("Title")
            Text("2023-05-02 12:00:00")
              .lineLimit(1)
            Text("description")
              .font(.system(size: 12))
            
          }
          .padding()
          Image(systemName: "chevron.right")
            .frame(alignment: .trailing)
            .padding()
          
        }
      }
      .foregroundColor(Color.black)
      .background(Color.clear)
      .sheet(isPresented: $listCellViewModel.isListRowTapped) {
        EditView(editViewModel: EditViewModel(withService: listCellViewModel.service))
      }
    }
  }
}

//struct ListCellView_Previews: PreviewProvider {
//  static var previews: some View {
//    ListCellView()
//  }
//}
