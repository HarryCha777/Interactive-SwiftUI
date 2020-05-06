//
//  TextInputMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct TextInputMenuView: View {
    @State private var titles = ["Simple Text Field", "Stylish Text Field", "Stylish Secure Field"]
    
    var body: some View {
        Form {
            NavigationLink(destination: TextInput1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: TextInput2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: TextInput3View(title: titles[2])) {
                Text(titles[2])
            }
        }
        .navigationBarTitle("Text Input", displayMode: .inline)
    }
}

struct TextInputMenuView_Previews: PreviewProvider {
    static var previews: some View {
        TextInputMenuView()
    }
}
