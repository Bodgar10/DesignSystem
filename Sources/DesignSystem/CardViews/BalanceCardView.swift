//
//  BalanceCardView.swift
//
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI

public struct BalanceCardView: View {
    
    private let title: TextConfiguration
    private let subtitle: TextConfiguration
    private let principalButtonTitle: TextConfiguration
    private let secondaryButtonTitle: TextConfiguration
    private let principalButtonBackground: Color
    private let secondaryButtonBackground: Color
    
    /// Initializes a `BalanceCardView` with the specified configurations for title, subtitle, and buttons.
    ///
    /// This initializer allows you to create a `BalanceCardView` with customized text configurations for the title, subtitle, and two buttons, as well as background colors for the buttons.
    ///
    /// - Parameters:
    ///   - title: A `TextConfiguration` instance that specifies the styling for the title text. This includes properties such as the title text, color, size, and whether it is bold.
    ///   - subtitle: A `TextConfiguration` instance that specifies the styling for the subtitle text. Like the title, it includes the text content, color, size, and boldness.
    ///   - principalButtonTitle: A `TextConfiguration` instance that specifies the styling for the main button's title text. This allows you to customize the text that appears on the primary button.
    ///   - secondaryButtonTitle: A `TextConfiguration` instance that specifies the styling for the secondary button's title text. This is for the secondary button that accompanies the main button.
    ///   - principalButtonBackground: A `Color` value that sets the background color of the primary button. This allows for customization of the button's appearance.
    ///   - secondaryButtonBackground: A `Color` value that sets the background color of the secondary button. This can be customized independently of the primary button.
    ///
    /// Example Usage:
    /// ```swift
    /// let titleConfig = TextConfiguration(
    ///     title: "Mi Balance",
    ///     colorTitle: .black,
    ///     sizeTitle: .large,
    ///     isBold: true
    /// )
    ///
    /// let subtitleConfig = TextConfiguration(
    ///     title: "$9,201.57",
    ///     colorTitle: .gray,
    ///     sizeTitle: .xxLargePlus2,
    ///     isBold: true
    /// )
    ///
    /// let principalButtonConfig = TextConfiguration(
    ///     title: "AGREGAR INGRESO",
    ///     colorTitle: .white,
    ///     isBold: true
    /// )
    ///
    /// let secondaryButtonConfig = TextConfiguration(
    ///     title: "AGREGAR GASTO",
    ///     colorTitle: .white,
    ///     isBold: true
    /// )
    ///
    /// let balanceCardView = BalanceCardView(
    ///     title: titleConfig,
    ///     subtitle: subtitleConfig,
    ///     principalButtonTitle: principalButtonConfig,
    ///     secondaryButtonTitle: secondaryButtonConfig,
    ///     principalButtonBackground: .green,
    ///     secondaryButtonBackground: .red
    /// )
    /// ```
    ///
    /// - Note: The `TextConfiguration` instances must be appropriately initialized to ensure correct display of text in the `BalanceCardView`. The colors for the buttons should be chosen to match the overall design of the app.
    public init(
        title: TextConfiguration,
        subtitle: TextConfiguration,
        principalButtonTitle: TextConfiguration,
        secondaryButtonTitle: TextConfiguration,
        principalButtonBackground: Color,
        secondaryButtonBackground: Color) {
        self.title = title
        self.subtitle = subtitle
        self.principalButtonTitle = principalButtonTitle
        self.secondaryButtonTitle = secondaryButtonTitle
        self.principalButtonBackground = principalButtonBackground
        self.secondaryButtonBackground = secondaryButtonBackground
    }
    
    public var body: some View {
        CardView(cornerRadius: .medium, shadowRadius: .xSmall, padding: .large) {
            VStack(alignment: .leading, spacing: Sizes.medium.rawValue) {
                GenericText(configuration: title)
                GenericText(configuration: subtitle)
                HStack {
                    RoundedButton(textConfiguration: principalButtonTitle, backgroundColor: principalButtonBackground) {
                        
                    }
                    
                    RoundedButton(textConfiguration: secondaryButtonTitle, backgroundColor: secondaryButtonBackground) {
                        
                    }
                }
                .padding(.top)
            }
            .frame(maxWidth: .infinity)
        }
        .padding()
    }
}

#Preview {
    BalanceCardView(title: .init(title: "Mi Balance"), 
                    subtitle: .init(title: "$9,201.57", sizeTitle: .xxLargePlus2, isBold: true), 
                    principalButtonTitle: .init(
                        title: "AGREGAR INGRESO",
                        colorTitle: .white,
                        sizeTitle: .medium,
                        isBold: true
                    ),
                    secondaryButtonTitle: .init(
                        title: "AGREGAR GASTO",
                        colorTitle: .white,
                        sizeTitle: .medium,
                        isBold: true
                    ),
                    principalButtonBackground: .purple,
                    secondaryButtonBackground: .red.opacity(0.7)
    )
}
