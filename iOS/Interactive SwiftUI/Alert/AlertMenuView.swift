//
//  AlertMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct AlertMenuView: View {
    @State private var titles = ["Simple Alert", "Destructive Alert", "Action Alert", "Complex Alert"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Alert1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Alert2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Alert3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: Alert4View(title: titles[3])) {
                Text(titles[3])
            }
        }
        .navigationBarTitle("Alert", displayMode: .inline)
    }
}

struct AlertMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AlertMenuView()
    }
}
