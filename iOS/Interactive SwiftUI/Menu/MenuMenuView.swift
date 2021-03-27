//
//  MenuMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 6/16/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct MenuMenuView: View {
    @State private var titles = ["Tab Bar", "Side Menu"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Menu1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Menu2View(title: titles[1])) {
                Text(titles[1])
            }
        }
        .navigationBarTitle("Menu", displayMode: .inline)
    }
}

struct MenuMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuMenuView()
    }
}
