//
//  Constants.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

// Colors
let colorBackground: Color = Color("colorBackground")
let projectGray: Color = Color(UIColor.systemGray4)

//Data
let players: [PlayerAndBrandModel] = Bundle.main.decode(fileName: "player.json")
let categories: [CategoryModel] = Bundle.main.decode(fileName: "category.json")
let products: [ProductModel] = Bundle.main.decode(fileName: "product.json")
let brands: [PlayerAndBrandModel] = Bundle.main.decode(fileName: "brand.json")

//Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//Feedback

let feedback = UIImpactFeedbackGenerator(style: .medium)
