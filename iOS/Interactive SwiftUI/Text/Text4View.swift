//
//  Text4View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Text4View: View {
    @State var title : String
    
    @State private var vars = "variables" // makes variable vars as "variables"
    @State private var nums = "numbers" // makes variable nums as "numbers"
    @State private var pi = 3.141593 // makes variable pi as 3.141593

    var body: some View {
        Group {
            Text("This text displays \(vars), whether the \(vars) are strings or \(nums).\n") // displays text using variables
                .italic() // makes text italic
                + // adds the two texts
                Text("For example, π is approximately \(pi), and it can be further rounded to two decimal places: \(pi, specifier: "%.2f").") // displays text using variables and prints pi rounded to 2 decimal places at the end, but pi's value doesn't actually change
                    .underline() // underlines text
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Text4View_Previews: PreviewProvider {
    static var previews: some View {
        Text4View(title: "Title")
    }
}
