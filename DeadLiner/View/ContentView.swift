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
        ListView()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
