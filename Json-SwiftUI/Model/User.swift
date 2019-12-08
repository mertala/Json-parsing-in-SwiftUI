//
//  User.swift
//  Json-SwiftUI
//
//  Created by Mert Ala on 8.12.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
//

import Foundation
struct User: Codable, Identifiable {
    public var id: Int
    public var name: String
    public var email: String
    
    enum CodingKeys: String, CodingKey {
           case id = "id"
           case name = "name"
           case email = "email"
        }
}

