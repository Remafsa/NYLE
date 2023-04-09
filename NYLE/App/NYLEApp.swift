//
//  NYLEApp.swift
//  NYLE
//
//  Created by Rema Alnssiry on 06/04/2023.
//

import SwiftUI

@main
struct NYLEApp: App {
    @AppStorage ("isOnboarding") var isOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
                ContentView()
            
            
        }
    }
}
