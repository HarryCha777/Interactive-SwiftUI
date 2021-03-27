//
//  Clickable3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Clickable3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var showText = false // makes variable showText as false

    var body: some View {
        Group {
            if isReady {
                VStack { // groups views vertically
                    Button(action: { // if clicked
                        self.showText = true // sets showText to true
                    }) {
                        Text("Click me!") // displays text
                    }
                
                    if showText { // if showText is true
                        Text("The button above is clicked!") // displays text right under button above
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

struct Clickable3View_Previews: PreviewProvider {
    static var previews: some View {
        Clickable3View(title: "Title")
    }
}
