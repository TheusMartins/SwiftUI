//
//  BrandView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct BrandView: View {
    // MARK: - Properties
    let brand: PlayerAndBrandModel
    
    // MARK: - View
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))

    }
}

// MARK: - Preview
struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}
