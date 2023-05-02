//
//  AddScheduleButtonView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/03.
//

import SwiftUI

struct AddScheduleButtonView: View {
  var body: some View {
    HStack(alignment: .bottom) {
      Button {
        
      } label: {
        Image(systemName: "plus.circle.fill")
          .resizable()
          .frame(width: 55, height: 55)
          .aspectRatio(contentMode: .fill)
      }
    }
    
  }
}

struct AddScheduleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddScheduleButtonView()
    }
}
