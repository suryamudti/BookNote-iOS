//
//  Task.swift
//  BookNote
//
//  Created by Suryamudti Salmat on 25/06/20.
//  Copyright © 2020 Suryamudti Salmat. All rights reserved.
//

import Foundation

struct Task : Identifiable {
    let id = UUID()
    
    var name: String
    var isCompleted = false
}
