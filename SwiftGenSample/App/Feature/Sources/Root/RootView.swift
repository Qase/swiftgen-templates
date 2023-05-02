import Sheet
import SwiftUI
import UIToolkit
import Video

public struct RootView: View {

    enum Sheet: Identifiable {
        case text
        case video

        var id: Int {
            hashValue
        }
    }

    @State private var sheet: Sheet?

    public init() {}

    public var body: some View {
        VStack(spacing: 30) {
            Image.Cloud.computerNetwork
                .resizable()
                .scaledToFit()
                .foregroundColor(.M.mintGreen)

            VStack(spacing: 5) {
                Text(.hello("world".nsLocalizedString))

                Text(.high(5))

                Text(.no("world".nsLocalizedString, 5))
            }
            .font(.title)

            Button(.playVideo) {
                sheet = .video
            }

            Button(.showSheet) {
                sheet = .text
            }
        }
        .sheet(item: $sheet) { item in
            switch item {
            case .text:
                SheetView()

            case .video:
                VideoView(videoURL: Files.rickMp4)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
