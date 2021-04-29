//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Matheus Martins on 28/04/21.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Private properties
    private let fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - Initialization
    init(fruit: Fruit) {
        self.fruit = fruit
    }
    
    // MARK: - View
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }.frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

// MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruits[0]).previewLayout(.fixed(width: 375, height: 440))
    }
}
