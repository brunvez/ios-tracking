//
//  TodoItem.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import Foundation

struct TodoItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdAt: TimeInterval
    var isDone: Bool
    
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}

