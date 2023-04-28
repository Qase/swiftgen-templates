import SwiftUI
import UIToolkit

public struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    public init() {}

    public var body: some View {
        VStack(spacing: 30) {
            Image.keyboard
                .resizable()
                .scaledToFit()
                .foregroundColor(.M.magenta)

            VStack(spacing: 5) {
                Group {
                    Text(.Welcome.title)
                        .font(.title)

                    Text(.Welcome.headline)
                        .font(.headline)
                }
                .foregroundColor(.quanti)

                Text(.Welcome.shortDescription)
                    .foregroundColor(.lightGray)
                    .font(.body)

                Text(.Welcome.longDescription)
                    .font(.body)
                    .multilineTextAlignment(.center)
            }

            Button(.dismissSheet) {
                dismiss()
            }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
