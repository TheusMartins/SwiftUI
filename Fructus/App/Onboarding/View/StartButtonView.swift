//
//  StardButtonView.swift
//  Fructus
//
//  Created by Matheus Martins on 26/04/21.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - properties
    @AppStorage("isOnOnboarding") var isOnOnboarding: Bool?
    
    // MARK: - View
    var body: some View {
        Button(action: {
            isOnOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

// MARK: - Preview
struct StardButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
