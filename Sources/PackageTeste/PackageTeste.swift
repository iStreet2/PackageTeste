import SwiftUI

extension View{
    public func centralizarHorizontal() -> some View{
        HStack{
            Spacer()
            self
            Spacer()
        }
    }
}

struct GrowingButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
 
