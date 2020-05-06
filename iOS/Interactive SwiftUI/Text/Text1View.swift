//
//  Text1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Text1View: View {
    @State var title : String
    
    var body: some View {
        Group {
            Text("SwiftUI rocks!") // displays a text
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Text1View_Previews: PreviewProvider {
    static var previews: some View {
        Text1View(title: "Title")
    }
}
