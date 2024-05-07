//
//  Previewer.swift
//  FaceFacts
//
//  Created by Elijah Hudlow on 5/7/24.
//

import Foundation
import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person
    
    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)
        
        event = Event(name: "First day at the Lot", location: "Oakmont")
        person = Person(name: "Kelly Morrow", emailAddress: "km@gmail.com", details: "", metAt: event)
        
        container.mainContext.insert(person)
    }
}
