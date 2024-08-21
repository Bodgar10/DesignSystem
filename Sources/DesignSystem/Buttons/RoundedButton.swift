//
//  RoundedButton.swift
//
//
//  Created by Bodgar Espinosa Miranda on 12/08/24.
//

import SwiftUI

public struct RoundedButton: View {
    
    private var textConfiguration: TextConfiguration
    private var backgroundColor: Color
    private var callback: (() -> Void)
    
    /// Initializes a new instance with the specified parameters.
    ///
    /// - Parameters:
    ///   - textConfiguration: A `TextConfiguration` instance that specifies the styling for the main title text. This includes properties such as text content, color, size, and whether it is bold.
    ///   - backgroundColor: The background color of the view.
    ///   - callback: A closure to be executed when the action associated with this instance is triggered.
    ///
    /// Usage:
    /// ```
    /// /// let textConfig = TextConfiguration(
    ///     title: "Hello, World!",
    ///     colorTitle: .blue,
    ///     sizeTitle: .xMedium,
    ///     isBold: true
    /// )
    /// let myInstance = RoundedButton(
    ///     textConfiguration: textConfig,
    ///     backgroundColor: .blue,
    ///     callback: {
    ///         // Code to execute when the action is triggered
    ///     }
    /// )
    /// ```
    public init(
        textConfiguration: TextConfiguration,
        backgroundColor: Color,
        callback: @escaping () -> Void
    ) {
        self.textConfiguration = textConfiguration
        self.backgroundColor = backgroundColor
        self.callback = callback
    }
    
    public var body: some View {
        Button {
            callback()
        } label: {
            GenericText(configuration: textConfiguration)
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(Sizes.xxLarge.rawValue)
        .shadow(radius: Sizes.xxSmall.rawValue)
    }
}

#Preview {
    RoundedButton(
        textConfiguration: .init(
            title: "AGREGAR INGRESO",
            colorTitle: .white,
            isBold: true
        ),
        backgroundColor: .green,
        callback: {}
    )
}

#Preview {
    RoundedButton(
        textConfiguration: .init(
            title: "AGREGAR GASTO",
            colorTitle: .white,
            isBold: true
        ),
        backgroundColor: .red,
        callback: {}
    )
}

#Preview {
    RoundedButton(
        textConfiguration: .init(
            title: "PAGAR CARRITO",
            colorTitle: .black,
            isBold: true
        ),
        backgroundColor: .yellow,
        callback: {}
    )
}
