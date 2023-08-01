//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Kaloyan Petkov on 1.08.23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
            TabView {
                    ForEach(K.players) { player in
                        FeaturedItemView(player: player)
                            .padding(.top, 10)
                            .padding(.horizontal, 15)
                    }
                }
            .tabViewStyle(.page)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
    }
}
