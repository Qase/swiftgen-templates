// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen
// This is a custom template generated assets(images, colors, data, symbols) in extension of assets type
// for a convenient using base on SwiftGen template swift5

import SwiftUI

// MARK: - Image+

public extension Image {
    static let keyboard = Image("keyboard")
    static let mouseWireless = Image("mouse-wireless")
    enum Cloud {
        public static let computerNetwork = Image("Cloud/computer-network")
        public static let wifi = Image("Cloud/wifi")
    }
    static let snowGlobe = Image("snow-globe")
}

public extension Image {
    init(_ name: String) {
        self.init(name, bundle: .module)
    }
}
