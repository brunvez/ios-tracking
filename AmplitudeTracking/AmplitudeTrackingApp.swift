//
//  AmplitudeTrackingApp.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import FirebaseCore
import SwiftUI

@main
struct AmplitudeTrackingApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
