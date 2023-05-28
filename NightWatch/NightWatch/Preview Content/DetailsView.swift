//
//  DetailsView.swift
//  NightWatch
//
//  Created by Shpoopdy on 5/28/23.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    var body: some View {
        VStack {
            Text(taskName)
            Text("Placeholder for task")
            Text("Placeholder for task")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test!")
    }
}
