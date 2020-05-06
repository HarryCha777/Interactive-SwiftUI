//
//  Image4View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Image4View: View {
    @State var title : String
    
    var body: some View {
        Group {
            Image(systemName: "person.circle.fill") // displays a system icon named "person.circle.fill"
                .font(.largeTitle) // makes icon larger
                .foregroundColor(Color.blue) // makes icon blue
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Image4View_Previews: PreviewProvider {
    static var previews: some View {
        Image4View(title: "Title")
    }
}
