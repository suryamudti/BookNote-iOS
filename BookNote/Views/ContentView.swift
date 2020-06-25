//
//  ContentView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 25/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var taskStore: TaskStore
    
    var body: some View {
        List(taskStore.tasks) { task in
            Text(task.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( taskStore: TaskStore() )
    }
}
