//
//  Picker4View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Picker4View: View {
    @State var title : String
    @State private var installDate = Date() // makes variable installDate as current date and time

    var body: some View {
        Group {
            Text("When did you install this app?") // displays text

            DatePicker("Date Label", selection: $installDate) // displays date picker setting installDate
                .labelsHidden() // hides label "Date Label" because it's useless
            
            Text("You installed this app around \(installDate).\n") // displays text with install date
                .fixedSize(horizontal: false, vertical: true) // prevents this long text from collapsing vertically
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Picker4View_Previews: PreviewProvider {
    static var previews: some View {
        Picker4View(title: "Title")
    }
}
