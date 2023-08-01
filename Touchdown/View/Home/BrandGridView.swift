//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: K.gridLayout, spacing: K.rowSpacing) {
                ForEach(K.brands) { brand in
                    BrandItemView(brand: brand)
                }
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(K.colorBackground)
    }
}
