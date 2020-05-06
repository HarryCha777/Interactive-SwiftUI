//
//  Picker7View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/5/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Picker7View: View {
    @State var title : String
    @State private var installDate = Date() // makes variable installDate as current date and time
    
    var body: some View {
        Group {
            Form { // contains views in form
                Text("When did you install this app?") // displays text
                
                DatePicker("Install Date and Time:", selection: $installDate) // displays date picker setting installDate and doesn't hide label because it's actually useful in this case
            }
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
        .navigationBarItems(trailing:
            NavigationLink(destination: CodeView(title: title)) {
                Text("View Code")
            }
        )
    }
}

struct Picker7View_Previews: PreviewProvider {
    static var previews: some View {
        Picker7View(title: "Title")
    }
}
