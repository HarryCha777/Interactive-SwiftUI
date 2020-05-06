//
//  ContentView.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 4/2/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @EnvironmentObject var coreData: CoreData
    @FetchRequest(entity: CoreDataEntity.entity(), sortDescriptors: []) var coreDataEntityList: FetchedResults<CoreDataEntity>
    @State private var fetchedCoreData = false
    
    @Environment(\.managedObjectContext) var moc
    
    @State private var showRequestOnOpening = false
    @State private var showRequestOnYes = false
    @State private var showRequestOnNo = false
    
    @State private var requestOnOpeningTitle = "Just a moment please!"
    @State private var requestOnOpeningMessage = "Have you learned some SwiftUI from this app?"
    @State private var requestOnYesTitle = "I am super glad to hear that.   :)"
    @State private var requestOnYesMessage = "Would you mind rating this app on App Store?"
    @State private var requestOnNoTitle = "I am so sorry to hear that.   :("
    @State private var requestOnNoMessage = "Would you mind providing feedback so that I can improve this app for you?"
    
    @State private var requestOnOpeningSayYes = "Yes, I have!"
    @State private var requestOnOpeningSayNo = "Not really."
    @State private var requestAfterOpeningSayYes = "Sure, take me there!"
    @State private var requestAfterOpeningSayNo = "No, don't ask again."

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("View")) {
                        NavigationLink(destination: TextMenuView()) {
                            Text("Text")
                        }
                        NavigationLink(destination: ImageMenuView()) {
                            Text("Image")
                        }
                    }
                    
                    Section(header: Text("Layout")) {
                        NavigationLink(destination: StackMenuView()) {
                            Text("Stack")
                        }
                        NavigationLink(destination: SpacerMenuView()) {
                            Text("Spacer")
                        }
                    }
                    
                    Section(header: Text("Interaction")) {
                        NavigationLink(destination: ClickableMenuView()) {
                            Text("Clickable")
                        }
                        NavigationLink(destination: AdjustmentMenuView()) {
                            Text("Adjustment")
                        }
                        NavigationLink(destination: PickerMenuView()) {
                            Text("Picker")
                        }
                        NavigationLink(destination: TextInputMenuView()) {
                            Text("Text Input")
                        }
                    }
                    
                    Section(header: Text("Pop Up")) {
                        NavigationLink(destination: AlertMenuView()) {
                            Text("Alert")
                        }
                        NavigationLink(destination: LocalNotificationMenuView()) {
                            Text("Local Notification")
                            // title, message, sound, etc. tell them 30 sec limit.
                            // lots of "Click me" buttons for interaction?
                        }
                    }
                }
                
                // request review alerts
                HStack {
                    Spacer()
                        .alert(isPresented: $showRequestOnOpening) {
                            Alert(title: Text(requestOnOpeningTitle), message: Text(requestOnOpeningMessage), primaryButton: .destructive(Text(requestOnOpeningSayNo), action: {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { // very short delay is needed
                                    self.showRequestOnNo = true
                                }
                            }), secondaryButton: .default(Text(requestOnOpeningSayYes), action: {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { // very short delay is needed
                                    self.showRequestOnYes = true
                                }
                            }))
                        }
                    
                    Spacer()
                        .alert(isPresented: $showRequestOnYes) {
                            Alert(title: Text(requestOnYesTitle), message: Text(requestOnYesMessage), primaryButton: .default(Text(requestAfterOpeningSayYes), action: {
                                self.linkToReview()
                            }), secondaryButton: .destructive(Text(requestAfterOpeningSayNo)))
                        }
                    
                    Spacer()
                        .alert(isPresented: $showRequestOnNo) {
                            Alert(title: Text(requestOnNoTitle), message: Text(requestOnNoMessage), primaryButton: .default(Text(requestAfterOpeningSayYes), action: {
                                self.linkToReview()
                            }), secondaryButton: .destructive(Text(requestAfterOpeningSayNo)))
                        }
                }
            }
            .navigationBarTitle("Interactive SwiftUI")
            .navigationBarItems(trailing:
                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gear")
                        .imageScale(.large)
                }
            )
            .onAppear {
                if !self.fetchedCoreData {
                    self.fetchCoreData()
                }
                self.checkRatePopUp()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle()) // needed so the screen works on iPad (not needed?)
    }
    
    func checkRatePopUp() {
        // if it's first time asking for review, it's been 1 or more days since first launch
        if !self.coreData.requestedReview
            && Date().timeIntervalSince(self.coreData.firstLaunchDate) > 60 * 60 * 24 * 1 {
            
            self.coreData.requestedReview = true
            self.saveCoreData()
            
            self.showRequestOnOpening = true
        }
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
    
    func fetchCoreData() {
        if self.coreDataEntityList.count == 0 {
            return
        }
        
        let coreDataEntity = coreDataEntityList[0]
        self.coreData.firstLaunchDate = coreDataEntity.firstLaunchDate ?? Date()
        self.coreData.requestedReview = coreDataEntity.requestedReview
        self.fetchedCoreData = true
    }

    func saveCoreData() {
        deleteAllCoreData()
        
        let coreDataEntity = CoreDataEntity(context: self.moc)
        coreDataEntity.firstLaunchDate = self.coreData.firstLaunchDate
        coreDataEntity.requestedReview = self.coreData.requestedReview
        try? self.moc.save()
    }
    
    func deleteAllCoreData() {
        let appDel : AppDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let context : NSManagedObjectContext = appDel.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "CoreDataEntity")
        fetchRequest.returnsObjectsAsFaults = false
        
        let results = try? context.fetch(fetchRequest)
        for managedObject in results! {
            if let managedObjectData: NSManagedObject = managedObject as? NSManagedObject {
                context.delete(managedObjectData)
            }
        }
        try? self.moc.save()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CoreData())
    }
}
