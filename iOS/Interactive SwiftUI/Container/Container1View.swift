//
//  Container1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 6/16/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Container1View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                List { // groups sections in list
                    Section(header: Text("Section One")) { // contains section
                        Text("Item 1") // displays text
                        Text("Item 2") // displays text
                        Text("Item 3") // displays text
                    }
                
                    Section(header: Text("Section Two")) { // contains section
                        Text("Item 1") // displays text
                        Text("Item 2") // displays text
                        Text("Item 3") // displays text
                    }
                
                    Section(header: Text("Section Three")) { // contains section
                        Text("Item 1") // displays text
                        Text("Item 2") // displays text
                        Text("Item 3") // displays text
                    }
                }
                .listStyle(PlainListStyle()) // sets list's style to plain
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

struct Container1View_Previews: PreviewProvider {
    static var previews: some View {
        Container1View(title: "Title")
    }
}
