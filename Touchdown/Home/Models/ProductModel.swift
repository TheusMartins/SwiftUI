//
//  ProductModel.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import SwiftUI

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var rgbColor: Color { return Color(red: color[0], green: color[1], blue: color[2]) }
    var fomattedPrice: String { return "$\(price)" }
}
