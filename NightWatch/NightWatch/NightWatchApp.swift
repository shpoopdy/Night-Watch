//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Mikey Crispin on 5/19/23.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}
