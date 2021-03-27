//
//  Image2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Image2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                Image("puppy") // displays a cute image saved as "puppy" in Assets folder
                    .resizable() // makes image fill all available space on screen, which is required before resizing image
                    .frame(width: 350, height: 350) // resizes image to specified width and height
                    .clipShape(Circle()) // clips image with shape circle
                    .overlay(Circle().stroke(Color.white, lineWidth: 5)) // puts white boarder around image
                    .shadow(radius: 10) // displays shadow around image
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

struct Image2View_Previews: PreviewProvider {
    static var previews: some View {
        Image2View(title: "Title")
    }
}
