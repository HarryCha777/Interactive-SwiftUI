//
//  Spacer4View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Spacer4View: View {
    @State var title : String
    
    var body: some View {
        Group {
            VStack { // groups views vertically
                Spacer() // puts spacer at top, which takes up all available space
                Text("This text is a bit above the bottom.") // displays text under top spacer
                Spacer() // puts spacer at bottom
                    .frame(minHeight: 20, maxHeight: 50) // resizes spacer to maximum height possible in specified range
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

struct Spacer4View_Previews: PreviewProvider {
    static var previews: some View {
        Spacer4View(title: "Title")
    }
}
