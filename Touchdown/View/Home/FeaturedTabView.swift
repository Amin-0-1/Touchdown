//
//  FeatureTabView.swift
//  Touchdown
//
//  Created by Amin on 14/12/2023.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top)
                    .padding(.horizontal,15)
            }
        } //: TabView
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .background(.gray)
}
