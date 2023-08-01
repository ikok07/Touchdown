//
//  Constants.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct K {
    //MARK: - Data
    
    static let players: [Player] = Bundle.main.decode("player.json")
    static let categories: [Category] = Bundle.main.decode("category.json")
    static let products: [Product] = Bundle.main.decode("product.json")
    static let brands: [Brand] = Bundle.main.decode("brand.json")
    static let sampleProduct: Product = products[0]
    
    //MARK: - Color
    
    static let colorBackground: Color = Color("ColorBackground")
    static let colorGray: Color = Color(UIColor.systemGray4)
    
    //MARK: - Layout
    
    static let columnSpacing: CGFloat = 10
    static let rowSpacing: CGFloat = 10
    static var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
    }
    
    //MARK: - UX
    
    static let feedback = UIImpactFeedbackGenerator(style: .medium)
    
    //MARK: - API
    
    //MARK: - Image
    
    //MARK: - Font
    
    //MARK: - String
    
    //MARK: - Misc
}
