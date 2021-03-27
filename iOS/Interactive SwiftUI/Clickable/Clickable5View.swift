//
//  Clickable5View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Clickable5View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var showText = false // makes variable showText as false

    var body: some View {
        Group {
            if isReady {
                VStack {
                    Toggle(isOn: $showText) { // displays toggle setting showText
                        Text("Toggle me on to show text below.") // displays text for toggle
                    }
                    .padding() // puts padding around toggle to ensure it doesn't touch the sides of screen
                
                    if showText { // if showText is true
                        Text("The toggle above is toggled on!") // displays text right under toggle above
                    }
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

struct Clickable5View_Previews: PreviewProvider {
    static var previews: some View {
        Clickable5View(title: "Title")
    }
}
