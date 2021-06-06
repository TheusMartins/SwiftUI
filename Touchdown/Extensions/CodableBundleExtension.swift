//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Matheus Martins on 06/06/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(fileName: String) -> T {
        guard let url = self.url(forResource: fileName, withExtension: nil),
              let data = try? Data(contentsOf: url),
              let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Could not locate / load \(fileName) in bundle")
        }
        
        return decodedData
    }
}
