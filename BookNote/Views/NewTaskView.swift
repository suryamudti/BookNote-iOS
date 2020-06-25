//
//  NewTaskView.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 26/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    
    @State var text = ""
    
    var body: some View {
        TextField("Task Name", text: $text)
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
