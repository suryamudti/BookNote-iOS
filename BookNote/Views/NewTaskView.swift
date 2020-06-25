//
//  NewTaskView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var text = ""
    var taskStore: TaskStore
    
    var body: some View {
        Form {
            TextField("Task Name", text: $text)
            Button("Add") {
                self.taskStore.tasks.append(Task(name: self.text))
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(self.text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
