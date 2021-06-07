//
//  DetailView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    let product: ProductModel
    
    // MARK: - View
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderView(headerTitle: product.name)
                .padding()
            
            //Detail top part
            TopPartDetailView(product: product)
                .padding(.horizontal)
            //Detail bottom part
            //Rating + sizes
            //Description
            //Quantity + favourite
            //Add to cart
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(
            product.rgbColor
                .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[0])
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
