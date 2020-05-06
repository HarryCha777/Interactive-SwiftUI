//
//  PickerMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct PickerMenuView: View {
    @State private var titles = ["Simple Picker", "Segmented Picker", "Form Picker", "Simple Date Picker", "Just Date Picker", "Just Time Picker", "Form Date Picker"]
    
    var body: some View {
        Form {
            NavigationLink(destination: Picker1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: Picker2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: Picker3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: Picker4View(title: titles[3])) {
                Text(titles[3])
            }
            NavigationLink(destination: Picker5View(title: titles[4])) {
                Text(titles[4])
            }
            NavigationLink(destination: Picker6View(title: titles[5])) {
                Text(titles[5])
            }
            NavigationLink(destination: Picker7View(title: titles[6])) {
                Text(titles[6])
            }
        }
        .navigationBarTitle("Picker", displayMode: .inline)
    }
}

struct PickerMenuView_Previews: PreviewProvider {
    static var previews: some View {
        PickerMenuView()
    }
}
