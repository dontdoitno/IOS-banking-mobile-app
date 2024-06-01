//
//  ChatMessage.swift
//  Banking App
//
//  Created by Виктория on 01.06.2024.
//

import Foundation
import FirebaseFirestoreSwift

struct ChatMessage: Codable, Identifiable {
    @DocumentID var id: String?
    let fromId, toId, text: String
    let timestamp: Date
}
