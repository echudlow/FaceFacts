//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Elijah Hudlow on 5/7/24.
//

import SwiftData
import SwiftUI

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        // Step 2 add the contailer for the model - Step 3 in content view
        .modelContainer(for: Person.self)
    }
}
