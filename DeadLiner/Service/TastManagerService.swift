//
//  TastManagerService.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import RealmSwift

class TaskManagerService {
  private var realm: Realm?
  
  init() {
    do {
      try self.realm = Realm()
    } catch {
      print(error)
    }
  }
  
  func create(_ task: Task) {
    do {
      try realm?.write ({
        let task = Task(title: task.title,
                        data: task.date,
                        body: task.body)
      })
    } catch {
      print(error)
    }
  }
  
}
