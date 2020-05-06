//
//  Clickable1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Clickable1View: View {
    @State var title : String
    @State private var showText = false // makes variable showText as false

    var body: some View {
        Group {
            VStack { // groups views vertically
                Text("Tap me to show text below.") // displays text
                    .onTapGesture { // if tapped
                        self.showText = true // sets showText to true
                    }
                
                if showText { // if showText is true
                    Text("The text above is tapped!") // displays text right under text above
                }
            }
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Clickable1View_Previews: PreviewProvider {
    static var previews: some View {
        Clickable1View(title: "Title")
    }
}
