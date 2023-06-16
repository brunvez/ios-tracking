//
//  ContentViewViewModel.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import FirebaseAuth
import Foundation

class ContentViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    
    init() {
        self.currentUserId = Auth.auth().currentUser?.uid ?? ""
        
        Auth.auth().addStateDidChangeListener { [weak self] _, user in
            if let userId = user?.uid {
                self?.currentUserId = userId
                Analytics.identify(userId: userId)
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
