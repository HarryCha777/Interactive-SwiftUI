//
//  Adjustment3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Adjustment3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var volume = 50.0 // makes variable volume as 50.0

    var body: some View {
        Group {
            if isReady {
                VStack { // groups views vertically
                    HStack { // groups views horizontally
                        Image(systemName: "speaker.fill") // displays a system icon named "speaker.fill"
                            .font(.largeTitle) // makes icon larger
                            .foregroundColor(Color.blue) // makes icon blue
                
                        Slider(value: $volume, in: 0...100) // displays slider setting volume from 0 to 100 with default step of 1
                
                        Image(systemName: "speaker.3.fill") // displays a system icon named "speaker.3.fill"
                            .font(.largeTitle) // makes icon larger
                            .foregroundColor(Color.blue) // makes icon blue
                    }
                    .padding() // puts padding around HStack to ensure it doesn't touch the sides of screen

                    Text("The volume is \(Int(volume)).") // displays text and prints volume as integer
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

struct Adjustment3View_Previews: PreviewProvider {
    static var previews: some View {
        Adjustment3View(title: "Title")
    }
}
