//
//  ChatUser.swift
//  Banking App
//
//  Created by Виктория on 01.06.2024.
//

import FirebaseFirestoreSwift

struct ChatUser: Codable, Identifiable {
    @DocumentID var id: String?
    let uid, email, profileImageUrl: String
}
