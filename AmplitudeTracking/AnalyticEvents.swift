//
//  AnalyticEvents.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 6/16/23.
//

import Amplitude_Swift
import Foundation

class AnalyticEvents {
    static func signUp(email: String, name: String) -> BaseEvent {
        return BaseEvent(eventType: "Sign Up", eventProperties: ["email": email, "name": name])
    }
    
    static func todoDeleted() -> BaseEvent {
        return BaseEvent(eventType: "Todo Deleted", eventProperties: [:])
    }
}
