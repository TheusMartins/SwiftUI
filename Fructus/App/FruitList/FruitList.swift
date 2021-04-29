//
//  ContentView.swift
//  Fructus
//
//  Created by Matheus Martins on 25/04/21.
//

import SwiftUI

struct FruitList: View {
    // MARK: - Private properties
    private let fruits: [Fruit]
    
    init(fruits: [Fruit]) {
        self.fruits = fruits
    }
    
    var body: some View {
        NavigationView {
            List {
                
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRow(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitList(fruits: fruits)
    }
}
