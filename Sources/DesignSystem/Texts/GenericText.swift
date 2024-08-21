//
//  GenericText.swift
//
//
//  Created by Bodgar Espinosa Miranda on 13/08/24.
//

import SwiftUI

public struct GenericText: View {
    
    private var configuration: TextConfiguration
    
    /// Creates a new `GenericText` view with the specified `TextConfiguration`.
    ///
    /// - Parameter configuration: A `TextConfiguration` instance that specifies how the text should be styled. This includes the title, color, size, and weight of the text.
    ///
    /// Example Usage:
    /// ```swift
    /// let textConfig = TextConfiguration(
    ///     title: "Welcome!",
    ///     colorTitle: .primary,
    ///     sizeTitle: .medium,
    ///     isBold: true
    /// )
    ///
    /// GenericText(configuration: textConfig)
    /// ```
    ///
    /// - Note: The `TextConfiguration` struct must be properly initialized with the required properties to ensure the `GenericText` view displays as expected.
    public init(configuration: TextConfiguration) {
        self.configuration = configuration
    }
    
    public var body: some View {
        Text(configuration.title)
            .font(configuration.isBold ? .system(size: configuration.sizeTitle.rawValue, weight: .bold) : .system(size: configuration.sizeTitle.rawValue, weight: .regular))
            .foregroundStyle(configuration.colorTitle)
    }
}

#Preview {
    GenericText(
        configuration: .init(
            title: "Mi Balance",
            colorTitle: .black,
            sizeTitle: .xxLargePlus2,
            isBold: true
        )
    )
}

#Preview {
    GenericText(configuration: .init(title: "Regular text"))
}
