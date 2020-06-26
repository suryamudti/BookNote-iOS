//
//  SectionView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    
    @Binding var prioritizedTasks : TaskStore.PrioritizedTask
    
    var body: some View {
        ForEach(prioritizedTasks.tasks) { index in
            RowView(task: self.$prioritizedTasks.tasks[index])
        }
        .onMove { sourceIndices, destinationIndex in
            self.prioritizedTasks.tasks.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
        }
        .onDelete { indexSet in
            self.prioritizedTasks.tasks.remove(atOffsets: indexSet)
        }
    }
}
