//
//  CellInfoView.swift
//
//
//  Created by Bodgar Espinosa Miranda on 13/08/24.
//

import SwiftUI

public struct CellInfoView: View {
    
    private let icon: CashIcons
    private let titleConfiguration: TextConfiguration
    private let subtitleConfiguration: TextConfiguration
    private let thirdTitleConfiguration: TextConfiguration
    
    /// Initializes a new view with the specified icon and text configurations.
    ///
    /// This initializer sets up a view with an icon and three different text configurations for title, subtitle, and a third title. It allows you to customize each text element with its own configuration.
    ///
    /// - Parameters:
    ///   - icon: An `CashIcons` enum value representing the icon to be displayed. This defines which icon is used in the view.
    ///   - titleConfiguration: A `TextConfiguration` instance that specifies the styling for the main title text. This includes properties such as text content, color, size, and whether it is bold.
    ///   - subtitleConfiguration: A `TextConfiguration` instance that specifies the styling for the subtitle text. This includes similar properties as the main title but can be customized differently.
    ///   - thirdTitleConfiguration: A `TextConfiguration` instance that specifies the styling for the third title text. This allows for a third level of text customization within the view.
    ///
    /// - Note: Ensure that the `TextConfiguration` instances are correctly initialized with the required properties to properly display the text in the view.
    public init(
        icon: CashIcons,
        titleConfiguration: TextConfiguration,
        subtitleConfiguration: TextConfiguration,
        thirdTitleConfiguration: TextConfiguration
    ) {
        self.icon = icon
        self.titleConfiguration = titleConfiguration
        self.subtitleConfiguration = subtitleConfiguration
        self.thirdTitleConfiguration = thirdTitleConfiguration
    }
    
    public var body: some View {
        HStack(spacing: Sizes.small.rawValue) {
            icon.image
                .resizable()
                .frame(width: Sizes.iconSmall.rawValue, height: Sizes.iconSmall.rawValue)
                .padding(.horizontal)
            VStack(alignment: .leading, spacing: Sizes.small.rawValue) {
                GenericText(configuration: titleConfiguration)
                GenericText(configuration: subtitleConfiguration)
            }
            Spacer()
            GenericText(configuration: thirdTitleConfiguration)
                .padding(.trailing)
        }
        .frame(maxWidth: .infinity)
        .padding(.top)
        .padding(.bottom)
        Divider()
            .padding(.leading)
            .padding(.trailing)
    }
}

#Preview {
    CellInfoView(
        icon: .dollarOut,
        titleConfiguration: .init(title: "Gasto en Efectivo", sizeTitle: .large, isBold: true),
        subtitleConfiguration: .init(title: "Compras de despensa en frutería"),
        thirdTitleConfiguration: .init(title: "$605.00", colorTitle: .red, isBold: true)
    )
}

#Preview {
    CellInfoView(
        icon: .dollarIn,
        titleConfiguration: .init(title: "Salario", sizeTitle: .large, isBold: true),
        subtitleConfiguration: .init(title: "Salario mensual del trabajo"),
        thirdTitleConfiguration: .init(title: "$120,000.00", colorTitle: .green, isBold: true)
    )
}
