//
//  Picker5View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Picker5View: View {
    @State var title : String
    @State private var birthDate = Date() // makes variable birthDate as current date and time
    
    var body: some View {
        Group {
            Text("When is your birthday?") // displays text
            
            DatePicker("Date Label", selection: $birthDate, in: ...Date(), displayedComponents: .date) // displays date picker setting birthDate
                .labelsHidden() // hides label "Date Label" because it's useless
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Picker5View_Previews: PreviewProvider {
    static var previews: some View {
        Picker5View(title: "Title")
    }
}
