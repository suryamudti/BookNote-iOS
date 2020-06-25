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
}
