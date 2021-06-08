//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(Shop())
        }
    }
}
