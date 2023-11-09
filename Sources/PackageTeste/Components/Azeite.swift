//
//  SwiftUIView.swift
//
//
//  Created by Gabriel Vicentin Negro on 09/11/23.
//

import SwiftUI

struct Azeite: View {
    @State var scale = false
    var body: some View {
        VStack{
            Text("Marina é inimiga!")
                .font(.system(size:30))
                .padding()
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 10)
        }
        .scaleEffect(scale ? 1 : 0.4)
        .onAppear{
            scale = false
            withAnimation(.spring(response: 0.3, dampingFraction: 0.3)){
                scale = true
            }
        }
        
    }
}

#Preview {
    Azeite()
}
