//
//  AdjustmentMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct AdjustmentMenuView: View {
    @State private var titles = ["Simple Stepper", "Custom Stepper", "Slider"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Adjustment1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Adjustment2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Adjustment3View(title: titles[2])) {
                Text(titles[2])
            }
        }
        .navigationBarTitle("Adjustment", displayMode: .inline)
    }
}

struct AdjustmentMenuView_Previews: PreviewProvider {
    static var previews: some View {
        AdjustmentMenuView()
    }
}
