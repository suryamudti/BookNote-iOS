//
//  RowView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    @Binding var task: Task
    
    let checkMark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(destination: TaskEditingView(task: $task)) {
            if task.isCompleted {
                checkMark
            } else {
                checkMark.hidden()
            }
            Text(task.name).strikethrough(task.isCompleted)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: .constant(Task(name: "Todo")))
    }
}
