//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: K.gridLayout, alignment: .center, spacing: K.columnSpacing, pinnedViews: []) {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(K.categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }
        } //: Scroll
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .background(K.colorBackground)
    }
}
