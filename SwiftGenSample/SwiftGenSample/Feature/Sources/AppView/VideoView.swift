import AVKit
import SwiftUI
import UIToolkit

public struct VideoView: View {
    private let avPlayer: AVPlayer

    public init(videoURL: URL) {
        self.avPlayer = AVPlayer(url: videoURL)
    }

    public var body: some View {
        VideoPlayer(player: avPlayer)
            .frame(height: 400)
            .onAppear {
                avPlayer.play()
            }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(videoURL: URL(string: "")!)
    }
}
