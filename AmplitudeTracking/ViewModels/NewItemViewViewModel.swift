//
//  NewItemViewViewModel.swift
//  AmplitudeTracking
//
//  Created by Bruno Vezoli on 5/27/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() { }
    
    func save() {
        guard isValid() else {
            return
        }
        
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let newItem = TodoItem(
            id: UUID().uuidString,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdAt: Date().timeIntervalSince1970,
            isDone: false
        )
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
    
    func isValid() -> Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date() else {
            return false
        }
        
        return true
    }
}
