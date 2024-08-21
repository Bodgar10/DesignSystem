//
//  TextFieldConfiguration.swift
//
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import Foundation
import SwiftUI

/// Configuration for customizing the appearance and behavior of a TextField or SecureField in SwiftUI.
public struct TextFieldConfiguration {
    /// The placeholder text displayed when the text field is empty.
    let placeholder: String
    
    /// The color of the text entered into the text field.
    let textColor: Color
    
    /// The size of the text in the text field, defined by a `Sizes` enum.
    let fontSize: Sizes
    
    /// A Boolean value that determines whether the text field should obscure the entered text (useful for passwords).
    let isSecure: Bool
    
    /// The background color of the text field.
    let backgroundColor: Color
    
    /// The corner radius of the text field's background.
    let cornerRadius: Sizes
    
    /// The type of the keyboard.
    let keyboardType: UIKeyboardType
    
    /// Initializes a new `TextFieldConfiguration` with the specified properties.
    ///
    /// - Parameters:
    ///   - placeholder: The placeholder text to be displayed when the text field is empty.
    ///   - textColor: The color of the text entered into the text field. Defaults to `.black`.
    ///   - fontSize: The size of the text in the text field, defined by the `Sizes` enum. Defaults to `.medium`.
    ///   - isSecure: A Boolean value that determines whether the text field should obscure the entered text. Defaults to `false`.
    ///   - backgroundColor: The background color of the text field. Defaults to `.clear`.
    ///   - cornerRadius: The corner radius of the text field's background, defined by the `Sizes` enum. Defaults to `.small`.
    ///   - keyboardType: The type of the keyboard of the text field's,
    public init(
        placeholder: String,
        textColor: Color = .black,
        fontSize: Sizes = .medium,
        isSecure: Bool = false,
        backgroundColor: Color = .clear,
        cornerRadius: Sizes = .small,
        keyboardType: UIKeyboardType = .default
    ) {
        self.placeholder = placeholder
        self.textColor = textColor
        self.fontSize = fontSize
        self.isSecure = isSecure
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.keyboardType = keyboardType
    }
}
