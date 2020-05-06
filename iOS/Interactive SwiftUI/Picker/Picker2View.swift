//
//  Picker2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Picker2View: View {
    @State var title : String
    @State private var selectedIndex = 0 // makes variable selectedIndex as 0
    var colors = ["Red", "Blue", "Green"] // makes variable colors list as "Red", "Blue", and "Green"

    var body: some View {
        Group {
            Text("What is your favorite color?") // displays text
            
            Picker("Colors Label", selection: $selectedIndex) { // displays picker setting selectedIndex
                ForEach(0 ..< colors.count) { index in // loops through colors list
                    Text(self.colors[index]) // displays text for each color
                }
            }
            .pickerStyle(SegmentedPickerStyle()) // sets style to segmented and automatically hides label
            
            Text("Your favorite color is \(colors[selectedIndex]).") // displays text with favorite color
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Picker2View_Previews: PreviewProvider {
    static var previews: some View {
        Picker2View(title: "Title")
    }
}
