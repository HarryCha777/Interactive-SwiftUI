//
//  StackMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct StackMenuView: View {
    @State private var titles = ["HStack", "VStack", "ZStack"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Stack1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Stack2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Stack3View(title: titles[2])) {
                Text(titles[2])
            }
        }
        .navigationBarTitle("Stack", displayMode: .inline)
    }
}

struct StackMenuView_Previews: PreviewProvider {
    static var previews: some View {
        StackMenuView()
    }
}
