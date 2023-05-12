//
//  NYLEApp.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      return true
    }
}

@main
struct NYLEApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @EnvironmentObject var user: FarmersViewModel
    @StateObject private var model = Model()
    
    var body: some Scene {
        WindowGroup {
            if Auth.auth().currentUser != nil {
                MainView()
            } else {
                LoginView(didCompleteLoginProcess:{}
                )
        }
        }
    }
}
