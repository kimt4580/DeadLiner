//
//  NavigationBarView.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

struct MainTitleView: View {
    var body: some View {
      NavigationView {
        Text("")
          .navigationTitle("List")
          .navigationBarTitleDisplayMode(.inline)
      }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
      MainTitleView()
    }
}
