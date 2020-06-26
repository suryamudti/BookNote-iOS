//
//  TaskStore.PrioritizedTask.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

extension TaskStore {
    struct PrioritizedTask {
        let priority: Task.Priority
        var tasks: [Task]
    }
}

extension TaskStore.PrioritizedTask : Identifiable {
    var id: Task.Priority { priority }
}
