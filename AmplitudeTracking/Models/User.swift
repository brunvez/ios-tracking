//
//  User.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joinedAt: TimeInterval
}

