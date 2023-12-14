//
//  ContentView.swift
//  Touchdown
//
//  Created by Amin on 13/12/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var body: some View {
        VStack {
            NavigationBarView()
                .padding()
                .background(.white)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            ScrollView(.vertical,showsIndicators: false) {
                VStack{
                    FeaturedTabView()
                        .padding(.vertical,20)
                        .frame(height: 300)
                    FooterView()
                        .padding(.horizontal)
                } //: VSTACK
            } //: SCROLL
        } //: VSTACK
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
