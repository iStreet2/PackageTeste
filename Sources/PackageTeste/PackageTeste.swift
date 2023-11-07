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
 
