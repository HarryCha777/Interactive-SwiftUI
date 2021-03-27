//
//  Text3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Text3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                Text("This is obviously a super duper long text that most likely cannot possibly fit in one line of any given screen, and this lengthy text is aligned center and spaced out evenly in order to make the screen look better and more organized.") // displays a super long text
                    .multilineTextAlignment(.center) // centers text
                    .lineSpacing(30) // puts some exta space in-between each line
                    .padding() // puts padding around text to ensure it doesn't touch the sides of screen
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

struct Text3View_Previews: PreviewProvider {
    static var previews: some View {
        Text3View(title: "Title")
    }
}
