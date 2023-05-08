//
//  DeadLinerApp.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import SwiftUI

@main
struct DeadLinerApp: App {
  let service = TaskManagerService()
    var body: some Scene {
        WindowGroup {
            ContentView(contentViewModel: ContentViewModel(withService: service))
        }
    }
}
