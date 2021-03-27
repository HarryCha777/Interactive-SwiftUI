//
//  Container3View.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 6/16/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI
import WebKit // import web kit

struct Container3View: View {
    @State var title : String
    @State var isReady = false // needed for View Code to work on iOS 14
    
    @State private var url = "https://www.google.com" // sets variable url to Google's URL
    
    var body: some View {
        Group {
            if isReady {
                WebView(request: URLRequest(url: URL(string: url)!)) // contains web
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

struct WebView: UIViewRepresentable { // makes UIViewRepresentable struct
    let request: URLRequest // receives URL Request
    
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView() // returns WKWebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request) // loads URL request
    }
}

struct Container3View_Previews: PreviewProvider {
    static var previews: some View {
        Container3View(title: "Title")
    }
}
