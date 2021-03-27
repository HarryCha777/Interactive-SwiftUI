//
//  Picker1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Picker1View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var selectedIndex = 0 // makes variable selectedIndex as 0
    var colors = ["Red", "Blue", "Green"] // makes variable colors list as "Red", "Blue", and "Green"
    
    var body: some View {
        Group {
            if isReady {
                Text("What is your favorite color?") // displays text
                
                Picker("Colors Label", selection: $selectedIndex) { // displays picker setting selectedIndex
                    ForEach(0 ..< colors.count) { index in // loops through colors list
                        Text(self.colors[index]) // displays text for each color
                    }
                }
                .labelsHidden() // hides label "Colors Label" because it's useless
                
                Text("Your favorite color is \(colors[selectedIndex]).") // displays text with favorite color
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

struct Picker1View_Previews: PreviewProvider {
    static var previews: some View {
        Picker1View(title: "Title")
    }
}
