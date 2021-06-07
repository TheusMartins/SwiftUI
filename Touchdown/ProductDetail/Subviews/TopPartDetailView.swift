//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Properties
    let product: ProductModel

    @State private var isAnimating: Bool = false
    
    // MARK: - View
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.fomattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 1.0)) {
                isAnimating.toggle()
            }
        })
    }
}

// MARK: - Preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
