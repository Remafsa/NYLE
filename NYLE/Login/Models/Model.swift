//
//  Model.swift
//  NYLE
//
//  Created by Shoug. on 06/05/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

@MainActor
class Model: ObservableObject {
    
    func updateDisplayName(for user: User, displayName: String) async throws {
        let request = user.createProfileChangeRequest()
        request.displayName = displayName
        try await request.commitChanges()
    }
}
    
//    func detachFirebaseListener() {
//        self.firestoreListener?.remove()
//    }
//
//    func listenForChatMessages(in group: Group) {
//
//        let db = Firestore.firestore()
//
//        chatMessages.removeAll()
//
//        guard let documentId = group.documentId else { return }
//
//        self.firestoreListener = db.collection("groups")
//            .document(documentId)
//            .collection("messages")
//            .order(by: "dateCreated", descending: false)
//            .addSnapshotListener({ [weak self] snapshot, error in
//
//                guard let snapshot = snapshot else {
//                    print("Error fetching snapshots: \(error!)")
//                    return
//                }
//
//                snapshot.documentChanges.forEach { diff in
//                    if diff.type == .added {
//                        let chatMessage = ChatMessage.fromSnapshot(snapshot: diff.document)
//                        if let chatMessage {
//                            let exists = self?.chatMessages.contains(where: { cm in
//                                cm.documentId == chatMessage.documentId
//                            })
//
//                            if !exists! {
//                                self?.chatMessages.append(chatMessage)
//                            }
//                        }
//                    }
//                }
//
//            })
//
//    }
//
////    func populateGroups() async throws {
////
////        let db = Firestore.firestore()
////        let snapshot = try await db.collection("groups")
////            .getDocuments()
////
////        groups = snapshot.documents.compactMap { snapshot in
////            // we need to get a group based on snapshot
//////            Group.fromSnapshot(snapshot:snapshot)
////        }
////    }
////
////    func saveChatMessageToGroup(chatMessage: ChatMessage, group: Group) async throws {
////
////        let db = Firestore.firestore()
////        guard let groupDocumentId = group.documentId else { return }
////        let _ = try await db.collection("groups")
////            .document(groupDocumentId)
////            .collection("messages")
////            .addDocument(data: chatMessage.toDictionary())
////    }
////
//    /*
//    func saveChatMessageToGroup(text: String, group: Group, completion: @escaping (Error?) -> Void) {
//
//        let db = Firestore.firestore()
//        guard let groupDocumentId = group.documentId else { return }
//        db.collection("groups")
//            .document(groupDocumentId)
//            .collection("messages")
//            .addDocument(data: ["chatText": text]) { error in
//                completion(error)
//            }
//    } */
//
//
////    func saveGroup(group: Group, completion: @escaping (Error?) -> Void) {
////        let db = Firestore.firestore()
////        var docRef: DocumentReference? = nil
////        docRef = db.collection("groups")
////            .addDocument(data: group.toDictionary()) { [weak self] error in
////                if error != nil {
////                    completion(error)
////                } else {
////                    // add the group to groups array
////                    if let docRef {
////                        var newGroup = group
////                        newGroup.documentId = docRef.documentID
////                        self?.groups.append(newGroup)
////                        completion(nil)
////                    } else {
////                        completion(nil)
////                    }
////                }
////        }
////    }
//
//}
//
