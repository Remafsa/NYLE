//
//  FarmersViewModel.swift
//  NYLE
//
//  Created by Shoug. on 07/05/2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift
import SwiftUI

class FarmersViewModel: ObservableObject {
    
    // MARK: - STATE
    
    @Published var farmer: Farmers?
    
    // MARK: - PROPERTIES
    
    private let auth = Auth.auth()
       private let db = Firestore.firestore()
       var uuid: String? {
           auth.currentUser?.uid
       }
       var userIsAuthenticated: Bool {
           auth.currentUser != nil
       }
       var userIsAuthenticatedAndSynced: Bool {
           farmer != nil && self.userIsAuthenticated
       }
       
       // MARK: Firebase Auth Functions
    
       func signIn(email: String, password: String) {
           auth.signIn(withEmail: email, password: password) { [weak self] result, error in
               guard result != nil, error == nil else { return }
               // Successfully authenticated the user, now attempting to sync with Firestore
               DispatchQueue.main.async {
                   self?.sync()
               }
           }
       }
    func signUp(email: String, firstName: String, lastName: String, password: String, idNumber: String, phoneNumber: String) {
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else { return }
            DispatchQueue.main.async {
                self?.add(Farmers(firstName: firstName, lastName: lastName, email: email, phoneNumber: phoneNumber, password: password, idNumber: idNumber))
                self?.sync()
            }
           }
       }
       
       func signOut() {
           do {
               try auth.signOut()
               self.farmer = nil
           } catch {
               print("Error signing out the user: \(error)")
           }
       }
       
       // Firestore functions for User Data
       private func sync() {
           guard userIsAuthenticated else {
               return
           }
           db.collection("Farmers").document(self.uuid!).getDocument { (document, error) in
               guard document != nil, error == nil else {
                   return
               }
               do {
                   try self.farmer = document!.data(as: Farmers.self)
               } catch {
                   print("Sync error: \(error)")
               }
               
           }
           
       }
       
       private func add(_ farmer: Farmers) {
           guard userIsAuthenticated else {
               return
           }
           do {
               let _ = try db.collection("Farmers").document(self.uuid!).setData(from: farmer)
           } catch {
               print("Error adding: \(error)")
           }
       }
       
       private func update() {
           guard userIsAuthenticatedAndSynced else {
               return
           }
           do {
               let _ = try db.collection("Farmers").document(self.uuid!).setData(from: self.farmer)
           } catch {
               print("Error updating: \(error)")
           }
           
           
       }
   }
    
