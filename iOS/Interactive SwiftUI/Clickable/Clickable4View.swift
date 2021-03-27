//
//  Clickable4View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Clickable4View: View {
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
                        HStack { // groups views horizontally
                            Text("Click me !") // displays text
                                .bold() // makes text bold
                                .font(.largeTitle) // makes text larger
                            Image(systemName: "hand.thumbsup.fill") // displays a system icon named "hand.thumbsup.fill"
                                .font(.largeTitle) // makes icon larger
                        }
                        .padding() // puts padding around button
                        .foregroundColor(.white) // makes button white
                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)) // makes button's background gradient from blue at top to purple at bottom
                        .cornerRadius(30) // rounds corners
                    }
                }
                
                if showText { // if showText is true
                    Text("The button above is clicked!") // displays text right under button above
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

struct Clickable4View_Previews: PreviewProvider {
    static var previews: some View {
        Clickable4View(title: "Title")
    }
}
