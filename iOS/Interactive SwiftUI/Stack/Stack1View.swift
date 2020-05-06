//
//  Stack1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Stack1View: View {
    @State var title : String
    
    var body: some View {
        Group {
            HStack { // groups views horizontally
                Text("This is HStack.") // displays text at left
                Text("This groups views horizontally.") // displays text at middle
                Text("Just like this.") // displays text at right
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

struct Stack1View_Previews: PreviewProvider {
    static var previews: some View {
        Stack1View(title: "Title")
    }
}
