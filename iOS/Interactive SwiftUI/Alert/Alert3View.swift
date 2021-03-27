//
//  Alert3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Alert3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var showAlert = false // makes variable showAlert as false
    
    var body: some View {
        Group {
            if isReady {
                Button(action: { // if clicked
                    self.showAlert = true // sets showAlert to true
                }) {
                    Text("Open YouTube.") // displays text
                }
                .alert(isPresented: $showAlert) { // if showAlert is true
                    Alert(title: Text("Click on the button below to open YouTube!"), dismissButton: .default(Text("Take me to YouTube."), action: { // shows alert and if clicked
                        guard let url = URL(string: "https://www.youtube.com/watch?v=dQw4w9WgXcQ") else { return } // sets url
                        UIApplication.shared.open(url) // opens url
                    }))
                } // automatically sets showAlert to false after alert is finished
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

struct Alert3View_Previews: PreviewProvider {
    static var previews: some View {
        Alert3View(title: "Title")
    }
}
