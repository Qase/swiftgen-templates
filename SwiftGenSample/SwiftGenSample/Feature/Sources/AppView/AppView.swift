import SwiftUI
import UIToolkit

public struct AppView: View {
    @State private var showingSheet = false

    public init() {}

    public var body: some View {
        VStack(spacing: 30) {
            Image.Cloud.computerNetwork
                .resizable()
                .scaledToFit()
                .foregroundColor(.M.mintGreen)

            VStack(spacing: 5) {
                Text(.hello("world"))

                Text(.high(5))
                
                Text(.no("World", 5))
            }
            .font(.title)

            Button("Show Sheet") {
                showingSheet.toggle()
            }
        }
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
