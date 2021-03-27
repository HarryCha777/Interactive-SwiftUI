//
//  Picker6View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Picker6View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var wakeUpTime = Date() // makes variable wakeUpTime as current date and time
    
    var body: some View {
        Group {
            if isReady {
                Text("When did you wake up today?") // displays text
                
                DatePicker("Date Label", selection: $wakeUpTime, in: ...Date(), displayedComponents: .hourAndMinute) // displays date picker setting wakeUpTime
                    .labelsHidden() // hides label "Date Label" because it's useless
            }
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
        .onAppear {
            isReady = true
        }
    }
}

struct Picker6View_Previews: PreviewProvider {
    static var previews: some View {
        Picker6View(title: "Title")
    }
}
