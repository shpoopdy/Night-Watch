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
        NavigationView {
            List {
                //MARK: Nightly Tasks
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    ForEach(nightlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    })
                }
                //MARK: Weekly Tasks
                Section(header: TaskSectionHeader(symbolSystemName: "sun.and.horizon", headerText: "Weekly Tasks")) {
                    ForEach(weeklyTasks,id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    })
                }
                //MARK: Monthly Tasks
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    ForEach(monthlyTasks,id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}


struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }
        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


