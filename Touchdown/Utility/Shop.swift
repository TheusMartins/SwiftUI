//
//  Shop.swift
//  Touchdown
//
//  Created by Matheus Martins on 08/06/21.
//

import Foundation

final class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel?
}
