//
//  HeaderView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    let headerTitle: String
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective gear")
            
            Text(headerTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
    }
}

// MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(headerTitle: "Blue helmet")
    }
}
