import SwiftUI

public struct GrowingButton: ButtonStyle {
    public init(){}
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

public struct AlgumaCoisaView: View{
    public init(){}
    public var body: some View{
        Text("Bonito é legal!")
    }
}



#Preview{
    VStack{
        Button(action: {}, label: {
            Text("Button")
        })
        .buttonStyle(GrowingButton())
        AlgumaCoisaView()
    }
}
