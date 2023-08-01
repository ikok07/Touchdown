//
//  BundleExtention.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import Foundation

extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        
        guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not get data from \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode data from \(file)")
        }
        return decodedData
    }
}
