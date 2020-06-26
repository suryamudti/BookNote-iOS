//
//  TaskEditingView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct TaskEditingView: View {
    
    @Binding var task: Task
    
    var body: some View {
        Form {
            TextField("Name", text: $task.name)
            Toggle("Completed", isOn: $task.isCompleted)
        }
    }
}

struct TaskEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TaskEditingView(task: .constant(Task(name: "Todo")))
    }
}
