//
//  Person.swift
//  FaceFacts
//
//  Created by Elijah Hudlow on 5/7/24.
//

// Step 1: Create the model for the class -- Step 2 In the app

import Foundation
import SwiftData

@Model
class Person {
    var name: String
    var emailAddress: String
    var details: String
    var metAt: Event?
    @Attribute(.externalStorage) var photo: Data?
    
    init(name: String, emailAddress: String, details: String, metAt: Event? = nil) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
        self.metAt = metAt
    }
}
