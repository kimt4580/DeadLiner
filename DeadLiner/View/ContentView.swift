//
//  ContentView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Text("List")
          .font(.system(size: 20))
        ListView()
        AddScheduleButtonView( addScheduleButtonViewModel: AddScheduleButtonViewModel())
      }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
