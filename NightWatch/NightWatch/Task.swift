//
//  Task.swift
//  NightWatch
//
//  Created by Shpoopdy on 5/28/23.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
