//
//  RowView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    var task: Task
    
    var body: some View {
        Text(task.name)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(task: Task(name: "Todo"))
    }
}
