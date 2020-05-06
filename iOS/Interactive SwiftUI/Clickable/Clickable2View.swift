//
//  Clickable2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Clickable2View: View {
    @State var title : String
    @State private var showText = false // makes variable showText as false

    var body: some View {
        Group {
            VStack { // groups views vertically
                Image("puppy") // displays a cute image saved as "puppy" in Assets folder
                    .resizable() // makes image fill all available space on screen, which is required before resizing image
                    .frame(width: 350, height: 350) // resizes image to specified width and height
                    .onTapGesture { // if tapped
                        self.showText = true // sets showText to true
                    }
                
                if showText { // if showText is true
                    Text("The image above is tapped!") // displays text right under image above
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

struct Clickable2View_Previews: PreviewProvider {
    static var previews: some View {
        Clickable2View(title: "Title")
    }
}
