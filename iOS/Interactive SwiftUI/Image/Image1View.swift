//
//  Image1View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Image1View: View {
    @State var title : String
    
    var body: some View {
        Group {
            Image("puppy") // displays a cute image saved as "puppy" in Assets folder
            // credit: photography on Unsplash by T.R Photography
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Image1View_Previews: PreviewProvider {
    static var previews: some View {
        Image1View(title: "Title")
    }
}
