//
//  FirebaseManager.swift
//  Banking App
//
//  Created by Виктория on 31.05.2024.
//

import Firebase
import FirebaseStorage

class FirebaseManager: NSObject {
    static let shared = FirebaseManager()

    let auth: Auth
    let storage: Storage
    let firestore: Firestore
    
    var currentUser: ChatUser?

    override init() {
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }

        self.auth = Auth.auth()
        self.firestore = Firestore.firestore()
        self.storage = Storage.storage()

        super.init()
    }
}

