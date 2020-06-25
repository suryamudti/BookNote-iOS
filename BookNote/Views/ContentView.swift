//
//  ContentView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 25/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var taskStore: TaskStore
    
    @State var isModalPresented = false
    
    var body: some View {
        NavigationView {
            List(taskStore.tasks) { task in
                Text(task.name)
            }
        .navigationBarTitle("Task")
            .navigationBarItems(
                trailing:
                Button(
                    action: { self.isModalPresented = true }){
                Image(systemName: "plus")
            })
        }
        .sheet(isPresented: $isModalPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( taskStore: TaskStore() )
    }
}
