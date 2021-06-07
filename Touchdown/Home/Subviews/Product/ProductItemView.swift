//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Private properties
    private let product: ProductModel
    
    // MARK: - Initialization
    init(product: ProductModel) {
        self.product = product
    }
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .background(product.rgbColor)
                .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.fomattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
