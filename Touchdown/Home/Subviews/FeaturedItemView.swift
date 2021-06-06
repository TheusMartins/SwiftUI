//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Private properties
    private let player: PlayerModel
    
    // MARK: - Initialization
    init(player: PlayerModel) {
        self.player = player
    }
    
    // MARK: - View
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
