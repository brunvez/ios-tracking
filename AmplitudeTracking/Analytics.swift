//
//  Analytics.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 6/16/23.
//

import Amplitude_Swift
import Foundation

class Analytics {
    private static var client = {
        return Amplitude(configuration: Configuration(
            apiKey: ""
        ))
    }()
    
    static func track(eventName: String, properties: [String: Any]) {
        client.track(eventType: eventName, eventProperties: properties)
    }
    
    static func track(event: BaseEvent) {
        client.track(event: event)
    }
    
    static func identify(userId: String) {
        client.setUserId(userId: userId)
        client.identify(identify: Identify())
    }
    
    static func resetTracking() {
        client.reset()
    }
}
