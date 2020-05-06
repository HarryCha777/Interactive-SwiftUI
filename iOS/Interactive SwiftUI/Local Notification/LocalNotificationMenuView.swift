//
//  LocalNotificationMenuView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/6/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct LocalNotificationMenuView: View {
    @State private var titles = ["Simple Local Notification", "Audible Local Notification", "Cancel Local Notification", "Date Local Notification"]
    
    var body: some View {
        Form {
            NavigationLink(destination: LocalNotification1View(title: titles[0])) {
                Text(titles[0])
            }
            NavigationLink(destination: LocalNotification2View(title: titles[1])) {
                Text(titles[1])
            }
            NavigationLink(destination: LocalNotification3View(title: titles[2])) {
                Text(titles[2])
            }
            NavigationLink(destination: LocalNotification4View(title: titles[3])) {
                Text(titles[3])
            }
        }
        .navigationBarTitle("Local Notification", displayMode: .inline)
    }
}

struct LocalNotificationMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationMenuView()
    }
}
