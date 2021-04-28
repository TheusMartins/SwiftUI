//
//  FruitList.swift
//  Fructus
//
//  Created by Matheus Martins on 27/04/21.
//

import SwiftUI

struct FruitRow: View {
    // MARK: - Private Properties
    private let fruit: Fruit
    
    init(fruit: Fruit) {
        self.fruit = fruit
    }
    
    // MARK: - View
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color.black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

// MARK: - Preview
struct FruitList_Previews: PreviewProvider {
    static var previews: some View {
        FruitRow(fruit: fruits[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
