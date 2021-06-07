//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - Private properties
    private let categories: [CategoryModel]
    
    // MARK: - Initialization
    init(categories: [CategoryModel]) {
        self.categories = categories
    }
    
    // MARK: - View
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(sectionTitle: "Categories", isFooter: false),
                    footer: SectionView(sectionTitle: "Categories", isFooter: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
                
            }
            .frame(height: 140)
            .padding(.leading, 15)
            .padding(.vertical, 10)
        }
    }
}

// MARK: - Preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(categories: categories)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
