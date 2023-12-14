//
//  CodableBundle.swift
//  Touchdown
//
//  Created by Amin on 14/12/2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate file in bundle")
        }
        // create property for data
        guard let data = try? Data(contentsOf: url) else {
         fatalError("failed to load data from bundle")
        }
        // create a decoder
        let decoder = JSONDecoder()
        // create property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
             fatalError("failed to decode file from bunlde")
        }
        // return data
        return decodedData
    }
}
