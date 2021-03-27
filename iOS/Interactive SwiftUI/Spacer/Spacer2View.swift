//
//  Spacer2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Spacer2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                VStack { // groups views vertically
                    Text("There is a spacer of fixed size") // displays text at top
                    Spacer() // puts spacer at middle
                        .frame(height: 100) // resizes spacer to specified height
                    Text("in-between these two texts.") // displays text at bottom
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

struct Spacer2View_Previews: PreviewProvider {
    static var previews: some View {
        Spacer2View(title: "Title")
    }
}
