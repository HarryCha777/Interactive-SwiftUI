//
//  Menu2View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 6/16/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

struct Menu2View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    @State var isMenuOpen = false // makes variable isMenuOpen as false
    
    var body: some View {
        Group {
            if isReady {
                ZStack { // groups views by depth
                    VStack { // groups views vertically
                        Text("Tap me to open side menu. ") // displays text
                            .onTapGesture { // if tapped
                                self.isMenuOpen = true // sets isMenuOpen to true
                            }
                    }
                
                    SideMenuView(isMenuOpen: self.isMenuOpen, onMenuClose: { self.isMenuOpen.toggle() }) // calls SideMenu
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
}

struct SideMenuView: View { // makes SideMenu struct
    let isMenuOpen: Bool // receives isMenuOpen
    @State var onMenuClose: () -> Void // receives onMenuClose
    @State var screenWidth = UIScreen.main.bounds.size.width // sets screenWidth to screen width

    var body: some View {
        ZStack { // groups views by depth
            GeometryReader { _ in
                EmptyView() // shows nothing
            }
            .background(Color.gray.opacity(0.3)) // makes screen's background gray
            .opacity(self.isMenuOpen ? 1.0: 0.0) // makes screen's background white is menu is closed
            .animation(Animation.easeIn.delay(0.3)) // delays changing screen's background
            .onTapGesture { // if tapped
                self.onMenuClose() // call onMenuClose
            }
            
            HStack { // groups views horizontally
                List {
                    Text("Item 1") // displays text
                    Text("Item 2") // displays text
                    Text("Item 3") // displays text
                }
                .frame(width: screenWidth * 0.7) // positions side menu based on width of screen
                .offset(x: CGFloat(self.isMenuOpen ? screenWidth * 0.3: screenWidth)) // moves side menu if it is opened
                .animation(.default) // animates sliding in side menu
            }
        }
    }
}

struct Menu2View_Previews: PreviewProvider {
    static var previews: some View {
        Menu2View(title: "Title")
    }
}
