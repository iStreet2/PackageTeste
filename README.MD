# Package Teste in Swift

## Instalation

To install this package, import "https://github.com/iStreet2/PackageTeste.git" in SPM.

## Usage Example

```swift
import PackageTeste
import SwfitUI

struct ContentView: View{
    var body: some View{
        VStack{
            Button {
                print("Hello World")
            } label: {
            }
            .buttonStyle(GrowingButton())
            //OR
            AlgumaCoisaView()
        }
        //OR
        AlgumaCoisaView()
    }
}

```
