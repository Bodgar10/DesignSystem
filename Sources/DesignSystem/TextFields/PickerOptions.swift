//
//  PickerOptions.swift
//
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import Foundation

/// A structure representing an option for a picker.
///
/// Conforms to `Hashable` to support use in `ForEach` and other collections.
///
/// - Properties:
///   - `title`: The title to be displayed for the option.
///   - `icon`: The icon associated with the option.
public struct PickerOptions: Hashable {
    let title: String
    let icon: CashIcons
    
    /// Initializes a new `PickerOptions` instance.
    ///
    /// - Parameters:
    ///   - title: A `String` representing the title of the option.
    ///   - icon: An `CashIcons` value representing the icon associated with the option.
    public init(title: String, icon: CashIcons) {
        self.title = title
        self.icon = icon
    }
}
