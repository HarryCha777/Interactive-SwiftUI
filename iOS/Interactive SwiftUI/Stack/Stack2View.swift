//
//  Stack2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Stack2View: View {
    @State var title : String
    
    var body: some View {
        Group {
            VStack { // groups views vertically
                Text("This is VStack.") // displays text at top
                Text("This groups views vertically.") // displays text at middle
                Text("Just like this.") // displays text at bottom
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

struct Stack2View_Previews: PreviewProvider {
    static var previews: some View {
        Stack2View(title: "Title")
    }
}
