//
//  Adjustment1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Adjustment1View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var sleepHours = 7.0 // makes variable sleepHours as 7.0

    var body: some View {
        Group {
            if isReady {
                VStack { // groups views vertically
                    Stepper("How many hours did you sleep last night?", value: $sleepHours, in: 0...24, step: 0.25) // displays stepper setting sleepHours from 0 to 24 with step of 0.25
                        .padding() // puts padding around stepper to ensure it doesn't touch the sides of screen
                
                    Text("You slept \(sleepHours, specifier: "%.2f") hours last night.") // displays text and prints sleepHours rounded to 2 decimal places
                }
            }
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
        .onAppear {
            isReady = true
        }
    }
}

struct Adjustment1View_Previews: PreviewProvider {
    static var previews: some View {
        Adjustment1View(title: "Title")
    }
}
