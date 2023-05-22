//
//  ContentView.swift
//  NightWatch
//
//  Created by Mikey on 5/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    //MARK: Nightly Tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "moon.stars"))
                                .foregroundColor(.blue)
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                            Text("Nightly Tasks")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .underline()
                                .textCase(.uppercase)
                        }
                        
                        Text("- Check all windows")
                        Text("- Check all doors")
                        Text("- Check that the safe is locked")
                        Text("- Check the mailbox")
                        Text("- Inspec security cameras")
                        Text("- Clear ice from sidewalks")
                        Text("- Document \"strange and unusual\" occurences")
                    }
                    
                    //MARK: Weekly Tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "sun.and.horizon"))
                                .foregroundColor(.blue)
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                            Text("Weekly Tasks")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .underline()
                                .padding(.top)
                                .textCase(.uppercase)
                        }
                        
                        Text("- Check inside all vacant rooms")
                        Text("- Walk the perimiter of the property")
                    }
                    
                    //MARK: Monthly Tasks
                    Group {
                        HStack {
                            Text(Image(systemName: "calendar"))
                                .foregroundColor(.blue)
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                            Text("Monthly Tasks")
                                .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                                .fontWeight(.heavy)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .underline()
                                .padding(.top)
                                .textCase(.uppercase)
                        }
                        
                        Text("- Test security alarm")
                        Text("- Test motion detectors")
                        Text("- Test smoke alarms")
                    }
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .padding([.top, .leading])
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
