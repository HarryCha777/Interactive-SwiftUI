//
//  TextMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct TextMenuView: View {
    @State private var titles = ["Simple Text", "Stylish Text", "Long Text", "Formatted Text"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Text1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Text2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Text3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: Text4View(title: titles[3])) {
                Text(titles[3])
            }
        }
        .navigationBarTitle("Text", displayMode: .inline)
    }
}

struct TextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TextMenuView()
    }
}
