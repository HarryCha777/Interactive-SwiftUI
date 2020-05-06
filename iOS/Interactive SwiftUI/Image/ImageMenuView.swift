//
//  ImageMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct ImageMenuView: View {
    @State private var titles = ["Simple Image", "Stylish Image", "System Icon", "Stylish System Icon"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Image1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Image2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Image3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: Image4View(title: titles[3])) {
                Text(titles[3])
            }
        }
        .navigationBarTitle("Image", displayMode: .inline)
    }
}

struct ImageMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ImageMenuView()
    }
}
