//
//  ContentView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct HomeView: View {
    // MARK: - Private properties
    
    
    // MARK: - View
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        FeaturedTabView(players: players)
                            .padding(.vertical, 20)
                        
                        CategoryGridView(categories: categories)
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            }
                        }
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: []) {
                                ForEach(brands) { brand in
                                    BrandView(brand: brand)
                                }
                            }
                            .frame(height: 200)
                            .padding()
                        }
                        
                        
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
 
