//
//  SettingsView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @State private var isDarkMode = true
    @State private var appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String

    var body: some View {
        Form {
            Section(header: Text("Dev")) {
                NavigationLink(destination: AboutView()) {
                    Text("About")
                }

                Button(action: {
                    guard let url = URL(string: "mailto:interactiveswiftui@gmail.com") else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("Email the Dev")
                        .foregroundColor(Color.black)
                }
            }
            
            Section(header: Text("App")) {
                Button(action: {
                    guard let url = URL(string: "https://interactiveswiftui.pythonanywhere.com") else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("Privacy Policy")
                        .foregroundColor(Color.black)
                }
                
                Button(action: {
                    self.linkToReview()
                }) {
                    Text("Rate the App")
                        .foregroundColor(Color.black)
                }
                
                Text("App Version: \(appVersion!)")
            }
        }
        .navigationBarTitle("Settings", displayMode: .inline)
    }
    
    func linkToReview() {
        guard let productURL = URL(string: "https://apps.apple.com/app/id1505570242") else { return }
        
        var components = URLComponents(url: productURL, resolvingAgainstBaseURL: false)
        components?.queryItems = [
            URLQueryItem(name: "action", value: "write-review")
        ]
        
        guard let writeReviewURL = components?.url else { return }
        UIApplication.shared.open(writeReviewURL)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
