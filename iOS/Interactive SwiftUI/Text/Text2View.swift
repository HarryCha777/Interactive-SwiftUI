//
//  Text2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Text2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                Text("SwiftUI rocks!") // displays a text
                    .bold() // makes text bold
                    .font(.largeTitle) // makes text larger
                    .foregroundColor(Color.blue) // makes text blue
                    .background(Color.yellow) // makes text's background yellow
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

struct Text2View_Previews: PreviewProvider {
    static var previews: some View {
        Text2View(title: "Title")
    }
}
