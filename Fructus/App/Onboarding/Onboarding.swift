//
//  Onboarding.swift
//  Fructus
//
//  Created by Matheus Martins on 27/04/21.
//

import SwiftUI

struct Onboarding: View {
    // MARK: - Private properties
    private let sourceData: [Fruit]
    
    // MARK: - Initialization
    init(fruits: [Fruit]) {
        self.sourceData = fruits
    }
    
    // MARK: - View
    var body: some View {
        TabView {
            
            ForEach(sourceData[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding(fruits: fruits)
    }
}
