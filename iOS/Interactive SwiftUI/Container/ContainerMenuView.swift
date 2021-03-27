//
//  ContainerMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 6/16/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct ContainerMenuView: View {
    @State private var titles = ["List", "Form", "Web"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Container1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Container2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Container3View(title: titles[2])) {
                Text(titles[2])
            }
        }
        .navigationBarTitle("Container", displayMode: .inline)
    }
}

struct ContainerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerMenuView()
    }
}
