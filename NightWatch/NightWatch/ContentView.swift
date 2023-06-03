//
//  ContentView.swift
//  NightWatch
//
//  Created by Mikey on 5/19/23.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusModeOn = false
    @State private var resetAlertShowing = false
    
    var body: some View {
        NavigationView {
            List {
                //MARK: Nightly Tasks
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "Nightly Tasks")) {
                    
                    let tasksIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let tasksIndexPairs = Array(zip(tasks, tasksIndices))
                    
                    ForEach(tasksIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        
                        let nightWatchTasksWrapper = $nightWatchTasks
                        let tasksBinding = nightWatchTasksWrapper.nightlyTasks
                        let theTasksBinding = tasksBinding[taskIndex]
                        
                        if focusModeOn == false || (focusModeOn && task.isComplete == false) {
                            NavigationLink(
                                destination: DetailsView(task: theTasksBinding),
                                label: {
                                    TaskRow(task: task)
                            })
                        }
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.nightlyTasks.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        nightWatchTasks.nightlyTasks
                            .move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                //MARK: Weekly Tasks
                Section(header: TaskSectionHeader(symbolSystemName: "sun.and.horizon", headerText: "Weekly Tasks")) {
                    
                    let tasksIndices = nightWatchTasks.weeklyTasks.indices
                    let tasks = nightWatchTasks.weeklyTasks
                    let tasksIndexPairs = Array(zip(tasks, tasksIndices))
                    
                    ForEach(tasksIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        
                        let nightWatchTasksWrapper = $nightWatchTasks
                        let tasksBinding = nightWatchTasksWrapper.weeklyTasks
                        let theTasksBinding = tasksBinding[taskIndex]
                        
                        if focusModeOn == false || (focusModeOn && task.isComplete == false) {
                            NavigationLink(
                                destination: DetailsView(task: theTasksBinding),
                                label: {
                                    TaskRow(task: task)
                            })
                        }
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.nightlyTasks.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        nightWatchTasks.nightlyTasks
                            .move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
                //MARK: Monthly Tasks
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")) {
                    
                    let tasksIndices = nightWatchTasks.monthlyTasks.indices
                    let tasks = nightWatchTasks.monthlyTasks
                    let tasksIndexPairs = Array(zip(tasks, tasksIndices))
                    
                    ForEach(tasksIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        
                        let nightWatchTasksWrapper = $nightWatchTasks
                        let tasksBinding = nightWatchTasksWrapper.monthlyTasks
                        let theTasksBinding = tasksBinding[taskIndex]
                        
                        if focusModeOn == false || (focusModeOn && task.isComplete == false) {
                            NavigationLink(
                                destination: DetailsView(task: theTasksBinding),
                                label: {
                                    TaskRow(task: task)
                            })
                        }
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.nightlyTasks.remove(atOffsets: indexSet)
                    })
                    .onMove(perform: { indices, newOffset in
                        nightWatchTasks.nightlyTasks
                            .move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Reset") {
                        resetAlertShowing = true
                    }
                }
                
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn, label: {Text("butts")})
                }
            }
        }.alert(isPresented: $resetAlertShowing, content: {
            Alert(title: Text("Reset List"), primaryButton:
                    .destructive(Text("Reset"), action:{
                        let refreshedNightWatchTasks = NightWatchTasks()
                        self.nightWatchTasks.nightlyTasks =
                            refreshedNightWatchTasks.nightlyTasks
                        self.nightWatchTasks.weeklyTasks =
                            refreshedNightWatchTasks.weeklyTasks
                        self.nightWatchTasks.monthlyTasks =
                            refreshedNightWatchTasks.monthlyTasks
                    }), secondaryButton: .cancel())
        })
    }
}


struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
                .foregroundColor(.accentColor)
            Text(headerText)
                .foregroundColor(.accentColor)
        }
        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
    }
}

struct TaskRow: View {
    let task: Task
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        ContentView(nightWatchTasks: nightWatchTasks)
    }
}
