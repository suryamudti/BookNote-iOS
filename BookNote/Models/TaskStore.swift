//
//  TaskStore.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 25/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import Combine

class TaskStore : ObservableObject {
    @Published var tasks = [
        "Code with swiftUI app",
        "Book an escape room",
        "Walk the cat",
        "Pick up heavy things and put them down",
        "code with swiftUI app",
        "Make karaoke playlist",
        "Climb El Capitan"
        ].map { Task(name: $0) }
    
    @Published var prioritizedTasks = [
        PrioritizedTask(
            priority: .high,
            names: [
                "Code with swiftUI app",
                "Book an escape room",
                "Walk the cat"
            ]
        ),
        PrioritizedTask(
            priority: .medium,
            names: [
                "code with swiftUI app",
                "Make karaoke playlist"
            ]
        ),
        PrioritizedTask(
            priority: .low,
            names: [
                "Pick up heavy things and put them down"
            ]
        ),
        PrioritizedTask(
            priority: .no,
            names: [
                "Climb El Capitan"
            ]
        )
        
    ]
}

private extension TaskStore.PrioritizedTask {
    init(priority: Task.Priority, names: [String]) {
        self.init(
            priority: priority,
                  tasks: names.map{ Task(name: $0)})
    }
}
