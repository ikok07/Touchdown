//
//  Shop.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
