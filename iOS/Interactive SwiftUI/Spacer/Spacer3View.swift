//
//  Spacer3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Spacer3View: View {
    @State var title : String
    
    var body: some View {
        Group {
            VStack { // groups views vertically
                Text("There is a flexible spacer") // displays text at top
                Spacer() // puts spacer at middle
                    .frame(minHeight: 50, maxHeight: 100) // resizes spacer to maximum height possible in specified range
                Text("in-between these two texts.") // displays text at bottom
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

struct Spacer3View_Previews: PreviewProvider {
    static var previews: some View {
        Spacer3View(title: "Title")
    }
}
