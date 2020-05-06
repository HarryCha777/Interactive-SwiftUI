//
//  SpacerMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct SpacerMenuView: View {
    @State private var titles = ["Simple Spacer", "Fixed Spacer", "Flexible Spacer", "Bottom Spacer"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Spacer1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Spacer2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Spacer3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: Spacer4View(title: titles[3])) {
                Text(titles[3])
            }
        }
        .navigationBarTitle("Spacer", displayMode: .inline)
    }
}

struct SpacerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerMenuView()
    }
}
