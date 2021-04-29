//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Matheus Martins on 28/04/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Private properties
    private let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    private let fruit: Fruit
    
    // MARK: - Initialization
    init(fruit: Fruit) {
        self.fruit = fruit
    }
    
    // MARK: - View
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutricional value per 100g") {
                ForEach(0 ..< nutrients.count) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image("info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

// MARK: - Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruits[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
