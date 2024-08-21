//
//  TextConfiguration.swift
//
//
//  Created by Bodgar Espinosa Miranda on 13/08/24.
//

import SwiftUI

public struct TextConfiguration {
    public let title: String
    public let colorTitle: Color
    public let sizeTitle: Sizes
    public let isBold: Bool
    
    /// A structure representing the configuration for displaying text.
    ///
    /// This struct allows you to define various text properties such as title, color, size, and whether the text should be bold. It can be used to encapsulate text styling information and pass it to views or components that need to display text.
    ///
    /// Usage Example:
    /// ```swift
    /// let textConfig = TextConfiguration(
    ///     title: "Hello, World!",
    ///     colorTitle: .blue,
    ///     sizeTitle: .xMedium,
    ///     isBold: true
    /// )
    /// ```
    ///
    /// - Properties:
    ///   - `title`: A `String` representing the text to be displayed. This is a required property.
    ///   - `colorTitle`: A `Color` representing the color of the text. This is a required property.
    ///   - `sizeTitle`: A `Sizes` enum value representing the size of the text. This is a required property.
    ///   - `isBold`: A `Bool` indicating whether the text should be displayed in bold. This is a required property.
    ///
    /// - Initializer:
    ///   - `init(title:colorTitle:sizeTitle:isBold:)`:
    ///     - `title`: A `String` representing the text to be displayed.
    ///     - `colorTitle`: A `Color` representing the color of the text.
    ///     - `sizeTitle`: A `Sizes` enum value representing the size of the text.
    ///     - `isBold`: A `Bool` indicating whether the text should be bold.
    public init(
        title: String,
        colorTitle: Color = .black,
        sizeTitle: Sizes = .xMedium,
        isBold: Bool = false) {
        self.title = title
        self.colorTitle = colorTitle
        self.sizeTitle = sizeTitle
        self.isBold = isBold
    }
}
