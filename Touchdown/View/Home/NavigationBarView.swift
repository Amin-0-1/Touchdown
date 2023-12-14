//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Amin on 13/12/2023.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    @State private var isAnimated: Bool = false
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }) //: Button
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundStyle(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14)
                        .offset(x: 14, y: -10)
                } //: ZStack
            })
        } //: HStack
    }
}

// MARK: - Preview
struct NavigationBarView_Previews:PreviewProvider{
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
//#Preview {
//    NavigationBarView()
//}
