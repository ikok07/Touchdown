//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        } //: Vstack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: K.products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(K.colorBackground)
    }
}
