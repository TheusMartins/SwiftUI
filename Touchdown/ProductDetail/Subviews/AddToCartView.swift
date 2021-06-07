//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Matheus Martins on 07/06/21.
//

import SwiftUI

struct AddToCartView: View {
    // MARK: - Properties
    let product: ProductModel
    
    // MARK: - View
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(product.rgbColor)
        .clipShape(Capsule())
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
