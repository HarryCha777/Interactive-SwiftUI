//
//  Alert2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Alert2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    @State private var showAlert = false // makes variable showAlert as false
    
    var body: some View {
        Group {
            if isReady {
                Button(action: { // if clicked
                    self.showAlert = true // sets showAlert to true
                }) {
                    Text("Do NOT click me!") // displays text
                }
                .alert(isPresented: $showAlert) { // if showAlert is true
                    Alert(title: Text("How dare you!"), message: Text("Notice the button below is red."), dismissButton: .destructive(Text("Cancel"))) // shows alert with destructive button
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

struct Alert2View_Previews: PreviewProvider {
    static var previews: some View {
        Alert2View(title: "Title")
    }
}
