//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - Private properties
    private let players: [PlayerAndBrandModel]
    
    // MARK: - Initialization
    init(players: [PlayerAndBrandModel]) {
        self.players = players
    }
    
    // MARK: - View
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 15)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView(players: players)
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
    }
}
