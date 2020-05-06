//
//  ClickableMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct ClickableMenuView: View {
    @State private var titles = ["Text Tap", "Image Tap", "Simple Button", "Stylish Button", "Toggle"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Clickable1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Clickable2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Clickable3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: Clickable4View(title: titles[3])) {
                Text(titles[3])
            }
            NavigationLink(destination: Clickable5View(title: titles[4])) {
                Text(titles[4])
            }
        }
        .navigationBarTitle("Clickable", displayMode: .inline)
    }
}

struct ClickableMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ClickableMenuView()
    }
}
