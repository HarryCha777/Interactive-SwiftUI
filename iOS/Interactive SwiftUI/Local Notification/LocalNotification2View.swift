//
//  LocalNotification2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/6/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI
import UserNotifications // import user notification

struct LocalNotification2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    var body: some View {
        Group {
            if isReady {
                VStack {
                    Button(action: { // if clicked
                        self.schedule() // calls function named schedule
                    }) {
                        Text("Click me to show a local notification with sound in 10 seconds!") // displays text
                            .padding() // puts padding around text to ensure it doesn't touch the sides of screen
                    }
                
                    Text("After clicking on the button, please turn off the device's screen for local notification to work properly.") // displays text
                        .padding() // puts padding around text to ensure it doesn't touch the sides of screen
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
    
    func schedule() { // function that asks for notification permission and schedules notification
        UNUserNotificationCenter.current().getNotificationSettings { notificationSettings in
            switch notificationSettings.authorizationStatus {
            case .notDetermined:
                self.requestPermission() // calls function named requestPermissions
            case .authorized, .provisional:
                self.scheduleNotifications() // calls function named scheduleNotifications
            default:
                break
            }
        }
    }
    
    func requestPermission() { // function that requests permission
        UNUserNotificationCenter
            .current()
            .requestAuthorization(options: [.alert, .sound]) { granted, error in
                if granted == true && error == nil { // if permission is granted
                    self.scheduleNotifications() // calls function named scheduleNotifications
                }
        }
    }
    
    func scheduleNotifications() { // function that schedules notification in 10 seconds
        let content = UNMutableNotificationContent() // makes UMMutableNotificationContent variable
        content.title = "Notification with sound" // adds a title
        content.body = "This notification has sound!" // adds a message
        content.sound = UNNotificationSound(named: UNNotificationSoundName(rawValue: "punky.mp3")) // adds a sound saved as "punky.mp3" in current folder and adds default sound if such file is not found
        // sound files are not allowed to be longer than 30 seconds or default sound will be added
        // credit: Bensound: https://www.bensound.com/royalty-free-music
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false) // sets to notify in 10 seconds
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger) // makes UNNotificationRequest variable
        UNUserNotificationCenter.current().add(request) // requests notification
    }
}

struct LocalNotification2View_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotification2View(title: "Title")
    }
}
