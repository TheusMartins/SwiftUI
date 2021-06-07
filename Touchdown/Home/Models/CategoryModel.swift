//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
