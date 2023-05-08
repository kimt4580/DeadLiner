//
//  ContentView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject private(set) var contentViewModel: ContentViewModel
  
    var body: some View {
      VStack {
        Text("List")
          .font(.system(size: 20))
        ListView(listViewModel: ListViewModel(withService: contentViewModel.service))
        AddScheduleButtonView( addScheduleButtonViewModel: AddScheduleButtonViewModel(withService: TaskManagerService()))
      }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
