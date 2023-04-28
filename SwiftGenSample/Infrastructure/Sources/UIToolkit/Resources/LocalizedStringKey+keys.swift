// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen
// This is a custom template generated strings keys in extension of LocalizedStringKey 
// for a convenient using base on SwiftGen template structured-swift5

import SwiftUI

// MARK: - LocalizedStringKey+

public extension LocalizedStringKey {
    /// Dismiss sheet
    static let dismissSheet: LocalizedStringKey = "dismiss_sheet".localizedStringKey
    /// Hello, %@!✌️
    static func hello(_ p1: String) -> LocalizedStringKey {
        "hello %@".localizedStringKey(with: [p1])
    }     
    /// High %lld🖐️
    static func high(_ p1: Int) -> LocalizedStringKey {
        "high %lld".localizedStringKey(with: [p1])
    }     
    /// %@ No. %lld
    static func no(_ p1: String, _ p2: Int) -> LocalizedStringKey {
        "no %@ %lld".localizedStringKey(with: [p1, p2])
    }     
    /// Show sheet
    static let showSheet: LocalizedStringKey = "show_sheet".localizedStringKey
    /// World
    static let world: LocalizedStringKey = "world".localizedStringKey
    enum Welcome {
        /// Headline
        public static let headline: LocalizedStringKey = "welcome.headline".localizedStringKey
        /// Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Aenean vel massa quis mauris vehicula lacinia. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.
        public static let longDescription: LocalizedStringKey = "welcome.long_description".localizedStringKey
        /// Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
        public static let shortDescription: LocalizedStringKey = "welcome.short_description".localizedStringKey
        /// Title
        public static let title: LocalizedStringKey = "welcome.title".localizedStringKey
    }
}

public extension String {
    var nsLocalizedString: String {
        NSLocalizedString(self, bundle: .module, comment: "")
    }

    var localizedStringKey: LocalizedStringKey {
        LocalizedStringKey(nsLocalizedString)
    }

    func localizedStringKey(with arguments: [CVarArg]) -> LocalizedStringKey {
        let localizedString = String.localizedStringWithFormat(nsLocalizedString, arguments)
        return LocalizedStringKey(localizedString)
    }
}
