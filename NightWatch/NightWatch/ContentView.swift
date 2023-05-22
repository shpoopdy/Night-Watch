//
//  ContentView.swift
//  NightWatch
//
//  Created by Mikey on 5/19/23.
//

import SwiftUI

let nightlyTasks = ["Check all windows", "Check all doors", "Check that the safe is locked", "Check the mailbox", "Inspect security cameras", "Clear ice from sidewalks", "Document \"strange and unusual\" occurences"]

let weeklyTasks = ["Check inside all vacant rooms", "Walk the perimiter of the property"]

let monthlyTasks = ["Test security alarm", "Test motion detectors", "Test smoke alarms"]

struct ContentView: View {
    var body: some View {
        List {
            Section(header: HStack {
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)) {
                ForEach(nightlyTasks, id: \.self, content: {
                    taskName in Text(taskName)
                })
            }
            
            Section(header: HStack {
                Image(systemName: "sun.and.horizon")
                Text("Weekly Tasks")
            }
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)) {
                ForEach(weeklyTasks,id: \.self, content: {
                    taskName in Text(taskName)
                })
            }
            
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }
                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)) {
                ForEach(monthlyTasks,id: \.self, content: {
                    taskName in Text(taskName)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
