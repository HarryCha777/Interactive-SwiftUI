//
//  CoreData.swift
//  Interactive SwiftUI
//
//  Created by Harry Cha on 5/4/20.
//  Copyright © 2020 Harry Cha. All rights reserved.
//

import SwiftUI

class CoreData: ObservableObject {
    @Published var firstLaunchDate = Date()
    @Published var requestedReview = false
}
