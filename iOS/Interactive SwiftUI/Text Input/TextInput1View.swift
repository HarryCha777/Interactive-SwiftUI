//
//  TextInput1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct TextInput1View: View {
    @State var title : String
    @State private var name = "" // makes variable name as blank string

    var body: some View {
        Group {
            TextField("Your Name", text: $name) // displays text field setting name
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct TextInput1View_Previews: PreviewProvider {
    static var previews: some View {
        TextInput1View(title: "Title")
    }
}
