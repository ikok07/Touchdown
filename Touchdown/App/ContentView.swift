//
//  ContentView.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: 250)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                                .frame(height: 140)
                                .padding(.horizontal)
                            
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: K.gridLayout, spacing: 15) {
                                ForEach(K.products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            K.feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                } //: Loop
                            } //: LazyVGrid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView()
                        }
                    }
                } //: VStack
                .background(K.colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
