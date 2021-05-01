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
    @State private var isShowingSettings: Bool = false
    
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
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitList(fruits: fruits)
    }
}
