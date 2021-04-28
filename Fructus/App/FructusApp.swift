//
//  FructusApp.swift
//  Fructus
//
//  Created by Matheus Martins on 25/04/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnOnboarding") var isOnOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnOnboarding { Onboarding(fruits: fruits) } else { FruitList(fruits: fruits) }
        }
    }
}
