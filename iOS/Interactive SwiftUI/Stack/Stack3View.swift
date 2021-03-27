//
//  Stack3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Stack3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                ZStack { // groups views by depth
                    Image("puppy") // displays a cute image saved as "puppy" in Assets folder
                    Text("This is ZStack.\nThis groups views by depth.\nJust like this.") // displays text over the image
                        .bold() // makes text bold to make it easier to see
                        .foregroundColor(Color.white) // makes text white to make it easier to see
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

struct Stack3View_Previews: PreviewProvider {
    static var previews: some View {
        Stack3View(title: "Title")
    }
}
