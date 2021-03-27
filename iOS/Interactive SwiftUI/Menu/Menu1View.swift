//
//  Menu1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 6/16/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Menu1View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                TabView { // sets up tab bars
                    Text("Search View") // displays text
                        .tabItem { // contains tab items
                            Image(systemName: "magnifyingglass") // displays a system icon named "magnifyingglasses"
                                .imageScale(.large) // makes icon larger
                            Text("Search") // displays text under icon
                    }
                
                    Text("Chat View") // displays text
                        .tabItem { // contains tab items
                            Image(systemName: "text.bubble") // displays a system icon named "text.bubble"
                                .imageScale(.large) // makes icon larger
                            Text("Chat") // displays text under icon
                    }
                
                    Text("Profile View") // displays text
                        .tabItem { // contains tab items
                            Image(systemName: "person") // displays a system icon named "person"
                                .imageScale(.large) // makes icon larger
                            Text("Profile") // displays text under icon
                    }
                
                    Text("Settings View") // displays text
                        .tabItem { // contains tab items
                            Image(systemName: "gear") // displays a system icon named "gear"
                                .imageScale(.large) // makes icon larger
                            Text("Settings") // displays text under icon
                    }
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

struct Menu1View_Previews: PreviewProvider {
    static var previews: some View {
        Menu1View(title: "Title")
    }
}
