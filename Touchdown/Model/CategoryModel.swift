//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
