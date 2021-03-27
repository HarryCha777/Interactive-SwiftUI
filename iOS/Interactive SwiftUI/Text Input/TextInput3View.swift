//
//  TextInput3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct TextInput3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var password = "" // makes variable password as blank string
    
    var body: some View {
        Group {
            if isReady {
                HStack() { // groups views horizontally
                    Text("Password:") // displays text
                        .bold() // makes text bold
                    SecureField("Enter password here.", text: $password) // displays text field setting password
                        .textFieldStyle(RoundedBorderTextFieldStyle()) // sets style to rounded boarder
                }
                .padding() // puts padding around secure field to ensure it doesn't touch the sides of screen
                
                if password.count > 0 { // if password is not blank
                    Text("Your password's safe with me!") // displays text
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

struct TextInput3View_Previews: PreviewProvider {
    static var previews: some View {
        TextInput3View(title: "Title")
    }
}
