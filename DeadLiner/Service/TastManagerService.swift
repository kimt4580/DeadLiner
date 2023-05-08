//
//  TastManagerService.swift
//  DeadLiner
//
//  Created by 김태훈 on 2023/05/02.
//

import RealmSwift

class TaskManagerService {
  
  var userTasks: [Task] = []
  var userTaskHistory: [History] = []
  private var realm: Realm?
  
  init() {
    do {
      try self.realm = Realm()
    } catch {
      print(error)
    }
    self.userTasks = self.read()
  }
  
  func create(_ task: Task) {
    do {
      try realm?.write ({
        let task = Task(title: task.title,
                        date: task.date,
                        body: task.body)
        
        realm?.add(task)
      })
    } catch {
      print(error)
    }
  }
  
  func read() -> [Task] {
    guard let tasks = realm?.objects(Task.self) else {
      return []
    }
    
    return Array(tasks)
  }
  
  func update(task: Task) {
    let tasks = read()
    guard let index = tasks.firstIndex(of: task) else {
      return
    }
    
    do {
      try realm?.write({
        tasks[index].title = task.title
        tasks[index].body = task.body
        tasks[index].date = task.date
        tasks[index].isOverdate = (task.date + (60*60*24) < Date()) == true
      })
    } catch {
      print(error)
    }
  }
  
  func delete(task: Task) {
    do {
      try realm?.write({
        realm?.delete(task)
      })
    } catch {
      print(error)
    }
  }
  
}
