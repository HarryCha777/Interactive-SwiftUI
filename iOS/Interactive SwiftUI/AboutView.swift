//
//  AboutView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 5/4/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section(header: Text("About the App")) {
                Text("Interactive SwiftUI is an educational app designed to help iOS developers learn SwiftUI by actively interacting with the code.")
            }
            
            Section(header: Text("About Me")) {
                Text("Hello, my name is Harry!")
                Text("I am a college student who is passionate about iOS app development.")
            }
            
            Section(header: Text("Why I Made the App")) {
                Text("Since SwiftUI is a very new UI toolkit released in June, 2019, I had trouble finding many recourses online that teach SwiftUI.")
                Text("As a SwiftUI learner, I wanted to develop some kind of medium where its users can actively interact with SwiftUI instead of simply reading the code and looking at screenshots.")
                Text("Actively interacting with SwiftUI is only possible on Apple platforms, so it is not achievable on most websites or Android devices because Swift cannot run in such environments.")
                Text("And that is why I decided to make an iOS app for this purpose!")
            }
            
            Section(header: Text("Thank You !")) {
                Text("While I am not an advanced iOS developer by any means, I sincerely wish this app would serve its functions and assist its users to learn some SwiftUI!")
                Text("I am definitely planning to update it by continuously improving and adding more topics in the near future as I take into account all of your feedback!")
                
                Button(action: {
                    guard let url = URL(string: "mailto:interactiveswiftui@gmail.com") else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("So for any questions or suggestions, please reach out to me at ")
                        .foregroundColor(Color.black) +
                        Text("interactiveswiftui@gmail.com")
                            .foregroundColor(Color.blue) +
                        Text(".")
                            .foregroundColor(Color.black)
                }
                
                Text("I truly thank you for your interest and taking your valuable time reading about me and my app!")
            }
        }
        .navigationBarTitle("About", displayMode: .inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
