//
//  SwiftUIView 2.swift
//  
//
//  Created by Gabriel Vicentin Negro on 09/11/23.
//

import SwiftUI

public struct Verdade: View {
    @State var show = false
    @State var text: String
    public init(text: String){
        self.text = text
    }
    public var body: some View {
        VStack{
            Spacer()
            Spacer()
            Button(action: {
                show.toggle()
            }, label: {
                Text(show ? "Aperte para esconder a verdade" : "Aperte para descobrir a verdade")
            })
            .buttonStyle(GrowingButton())
            Spacer()
            if show{
                Azeite(text: text)
            }
            Spacer()
        }
    }
}

#Preview {
    Verdade(text: "Marina é inimiga!")
}
