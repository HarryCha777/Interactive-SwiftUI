//
//  CodeView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/3/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI
import WebKit

struct CodeView: View {
    @State var title : String
    @State private var newTitle = "https://www.google.com"
    
    var body: some View {
        WebView(request: URLRequest(url: URL(string: newTitle)!))
            .navigationBarTitle("View Code", displayMode: .inline)
            .onAppear {
                self.newTitle = self.getNewTitle(title: self.title)
            }
    }
    
    func getNewTitle(title: String) -> String {
        if self.title == "Simple Text" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/1%20-%20Text/SimpleText.swift"
        } else if self.title == "Stylish Text" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/1%20-%20Text/StylishText.swift"
        } else if self.title == "Long Text" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/1%20-%20Text/LongText.swift"
        } else if self.title == "Formatted Text" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/1%20-%20Text/FormattedText.swift"
        } else if self.title == "Simple Image" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/2%20-%20Image/SimpleImage.swift"
        } else if self.title == "Stylish Image" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/2%20-%20Image/StylishImage.swift"
        } else if self.title == "System Icon" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/2%20-%20Image/SystemIcon.swift"
        } else if self.title == "Stylish System Icon" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/2%20-%20Image/StylishSystemIcon.swift"
        } else if self.title == "HStack" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/3%20-%20Stack/HStack.swift"
        } else if self.title == "VStack" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/3%20-%20Stack/VStack.swift"
        } else if self.title == "ZStack" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/3%20-%20Stack/ZStack.swift"
        } else if self.title == "Simple Spacer" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/4%20-%20Spacer/SimpleSpacer.swift"
        } else if self.title == "Fixed Spacer" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/4%20-%20Spacer/FixedSpacer.swift"
        } else if self.title == "Flexible Spacer" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/4%20-%20Spacer/FlexibleSpacer.swift"
        } else if self.title == "Bottom Spacer" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/4%20-%20Spacer/BottomSpacer.swift"
        } else if self.title == "Text Tap" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/5%20-%20Clickable/TextTap.swift"
        } else if self.title == "Image Tap" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/5%20-%20Clickable/ImageTap.swift"
        } else if self.title == "Simple Button" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/5%20-%20Clickable/SimpleButton.swift"
        } else if self.title == "Stylish Button" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/5%20-%20Clickable/StylishButton.swift"
        } else if self.title == "Toggle" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/5%20-%20Clickable/Toggle.swift"
        } else if self.title == "Simple Stepper" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/6%20-%20Adjustment/SimpleStepper.swift"
        } else if self.title == "Custom Stepper" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/6%20-%20Adjustment/CustomStepper.swift"
        } else if self.title == "Slider" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/6%20-%20Adjustment/Slider.swift"
        } else if self.title == "Simple Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/SimplePicker.swift"
        } else if self.title == "Segmented Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/SegmentedPicker.swift"
        } else if self.title == "Form Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/FormPicker.swift"
        } else if self.title == "Simple Date Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/SimpleDatePicker.swift"
        } else if self.title == "Just Date Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/JustDatePicker.swift"
        } else if self.title == "Just Time Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/JustTimePicker.swift"
        } else if self.title == "Form Date Picker" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/7%20-%20Picker/FormDatePicker.swift"
        } else if self.title == "Simple Text Field" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/8%20-%20Text%20Input/SimpleTextField.swift"
        } else if self.title == "Stylish Text Field" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/8%20-%20Text%20Input/StylishTextField.swift"
        } else if self.title == "Stylish Secure Field" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/8%20-%20Text%20Input/StylishSecureField.swift"
        } else if self.title == "Simple Alert" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/9%20-%20Alert/SimpleAlert.swift"
        } else if self.title == "Destructive Alert" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/9%20-%20Alert/DestructiveAlert.swift"
        } else if self.title == "Action Alert" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/9%20-%20Alert/ActionAlert.swift"
        } else if self.title == "Complex Alert" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/9%20-%20Alert/ComplexAlert.swift"
        } else if self.title == "Simple Local Notification" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/10%20-%20Local%20Notification/SimpleLocalNotification.swift"
        } else if self.title == "Audible Local Notification" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/10%20-%20Local%20Notification/AudibleLocalNotification.swift"
        } else if self.title == "Cancel Local Notification" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/10%20-%20Local%20Notification/CancelLocalNotification.swift"
        } else if self.title == "Date Local Notification" {
            return "https://github.com/HarryCha777/Interactive-SwiftUI/blob/master/10%20-%20Local%20Notification/DateLocalNotification.swift"
        }

        return "https://www.google.com"
    }
}

struct WebView: UIViewRepresentable {
    let request: URLRequest
      
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView(title: "Title")
    }
}
