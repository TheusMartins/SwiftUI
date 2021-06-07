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
        ZStack {
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
                    .zIndex(1)
                
                //Detail bottom part
                VStack(alignment: .center, spacing: 0) {
                    //Rating + sizes
                    RatingsSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                        .padding(.horizontal)
                        .zIndex(1)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        //Description
                        Text(product.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    
                    //Quantity + favourite
                    QuantityFavouriteDetailView()
                        .padding(.vertical, 20)
                        .zIndex(1)
                    
                    //Add to cart
                    AddToCartView(product: product)
                        .padding(.bottom, 20)
                    
                }
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top, -105)
                )
                .zIndex(0)
            }
            .ignoresSafeArea(.all, edges: .all)
            .background(
                product.rgbColor
                    .ignoresSafeArea(.all, edges: .all)
            )
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: products[0])
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
