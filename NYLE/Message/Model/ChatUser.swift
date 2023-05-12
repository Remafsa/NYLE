//
//  ChatUser.swift
//  NYLE
//
//  Created by Rema Alnssiry on 12/05/2023.
//

import FirebaseFirestoreSwift

struct ChatUser: Codable, Identifiable {
    @DocumentID var id: String?
    let uid, email, profileImageUrl: String
}
