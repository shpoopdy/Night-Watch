//
//  DetailsView.swift
//  NightWatch
//
//  Created by Shpoopdy on 5/28/23.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task")
            if verticalSizeClass == .regular {
                Divider()
                Text("Big booty chungy, this is a massive test of my will and of all my spirit dealing with overcooked food and food bits.")
                Divider()
            }
            
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(Task(name:
                            "Test task", isComplete: false,
                            lastCompleted: nil)))
    }
}
