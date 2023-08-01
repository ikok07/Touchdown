//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.horizontal)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    RatingsSizesDetailView()
                        .padding(.trailing, 2)
                        .padding(.bottom, 10)
                    
                    Text(shop.selectedProduct?.description ?? K.sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                    QuantityFavouriteDetailView()
                        .padding(.vertical, 10)
                } //: ScrollView
                AddToCartDetailView()
                    .padding(.bottom, 20)
            } //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShapeView())
                    .padding(.top, -105)
            )
        } //: VStack
        .zIndex(0)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? K.sampleProduct.red,
                green: shop.selectedProduct?.green ?? K.sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? K.sampleProduct.blue
            )
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
