//
//  Myanmar_Honorable_WomenApp.swift
//  Myanmar Honorable Women
//
//  Created by Min Thu Khine on 2/20/24.
//

import SwiftUI

@main
struct Myanmar_Honorable_WomenApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingTabView()
            } else {
                StartView()
            }
        }
    }
}
