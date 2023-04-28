// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// MARK: - Files

public enum Files {
    /// rick.mp4
    public static let rickMp4 = File(name: "rick", ext: "mp4", relativePath: "", mimeType: "video/mp4").url
}

// MARK: - Implementation Details

private struct File {
    public let name: String
    public let ext: String?
    public let relativePath: String
    public let mimeType: String

    public var url: URL {
        return url(locale: nil)
    }

    public func url(locale: Locale?) -> URL {
        let bundle = BundleToken.bundle
        let url = bundle.url(
            forResource: name,
            withExtension: ext,
            subdirectory: relativePath,
            localization: locale?.identifier
        )

        guard let result = url else {
            let file = name + (ext.flatMap { ".\($0)" } ?? "")
            fatalError("Could not locate file named \(file)")
        }

        return result
    }

    public var path: String {
        return path(locale: nil)
    }

    public func path(locale: Locale?) -> String {
        return url(locale: locale).path
    }
}

private final class BundleToken {
    static let bundle: Bundle = {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: BundleToken.self)
        #endif
    }()
}
