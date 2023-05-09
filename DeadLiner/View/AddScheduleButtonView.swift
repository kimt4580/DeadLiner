//
//  AddScheduleButtonView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/03.
//

import SwiftUI

struct AddScheduleButtonView: View {
  @State var date = Date()
  @ObservedObject private(set) var addScheduleButtonViewModel: AddScheduleButtonViewModel
  
  var body: some View {
    VStack(alignment: .trailing) {
      Spacer()
      HStack {
        Spacer()
        Button {
          addScheduleButtonViewModel.addButtonTapped()
        } label: {
          Image(systemName: "plus.circle.fill")
            .resizable()
            .frame(width: 55, height: 55)
            .aspectRatio(contentMode: .fill)
        }
        .foregroundColor(Color.black)
        .sheet(isPresented: $addScheduleButtonViewModel.isAddButtonTapped) {
          RegisterView(registerViewModel: RegisterViewModel(withService: addScheduleButtonViewModel.service))
        }
      }
      .padding()
    }
  }
}

struct AddScheduleButtonView_Previews: PreviewProvider {
    static var previews: some View {
      AddScheduleButtonView(addScheduleButtonViewModel: AddScheduleButtonViewModel(withService: TaskManagerService()))
    }
}
