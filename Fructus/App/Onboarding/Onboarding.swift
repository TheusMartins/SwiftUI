//
//  Onboarding.swift
//  Fructus
//
//  Created by Matheus Martins on 27/04/21.
//

import SwiftUI

struct Onboarding: View {
    // MARK: - View
    var body: some View {
        TabView {
            
            ForEach(0 ..< 5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
