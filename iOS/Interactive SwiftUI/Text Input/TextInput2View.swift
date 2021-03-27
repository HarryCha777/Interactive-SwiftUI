//
//  TextInput2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct TextInput2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var name = "" // makes variable name as blank string

    var body: some View {
        Group {
            if isReady {
                HStack() { // groups views horizontally
                    Text("Your Name:") // displays text
                        .bold() // makes text bold
                    TextField("Enter your name here.", text: $name) // displays text field setting name
                        .textFieldStyle(RoundedBorderTextFieldStyle()) // sets style to rounded boarder
                }
                .padding() // puts padding around text field to ensure it doesn't touch the sides of screen
                
                if name.count > 0 { // if name is not blank
                    Text("Nice to meet you, \(name).") // displays text with name
                }
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

struct TextInput2View_Previews: PreviewProvider {
    static var previews: some View {
        TextInput2View(title: "Title")
    }
}
