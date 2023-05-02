//
//  Task.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
  @Persisted(primaryKey: true) var id = UUID()
  @Persisted var title: String
  @Persisted var date: Date
  @Persisted var body: String
  @Persisted var isOverdate: Bool
  
  convenience init(title: String, data: Date, body: String) {
    self.init()
    self.title = title
    self.date = date
    self.body = body
    self.isOverdate = isOverdate
  }
}

