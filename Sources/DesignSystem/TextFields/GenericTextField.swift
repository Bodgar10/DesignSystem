//
//  GenericTextField.swift
//
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI

/// A generic SwiftUI view that displays a customizable text field or secure field based on the provided configuration.
public struct GenericTextField: View {
    /// The text binding that holds the current value entered into the text field.
    @Binding private var text: String
    
    /// The configuration that defines the appearance and behavior of the text field.
    private let configuration: TextFieldConfiguration
    
    /// Initializes a new `GenericTextField` with the provided text binding and configuration.
    ///
    /// - Parameters:
    ///   - text: A binding to the string that will be displayed and edited in the text field.
    ///   - configuration: A `TextFieldConfiguration` that defines the appearance and behavior of the text field.
    public init(text: Binding<String>, configuration: TextFieldConfiguration) {
        self._text = text
        self.configuration = configuration
    }
    
    public var body: some View {
        if configuration.isSecure {
            SecureField(configuration.placeholder, text: $text)
                .padding()
                .keyboardType(configuration.keyboardType)
                .font(.system(size: configuration.fontSize.rawValue))
                .foregroundColor(configuration.textColor)
                .background(configuration.backgroundColor)
                .cornerRadius(configuration.cornerRadius.rawValue)
        } else {
            TextField(configuration.placeholder, 
                      text: $text) {
                UIApplication.shared.endEditing()
            }
            .padding()
            .keyboardType(configuration.keyboardType)
            .font(.system(size: configuration.fontSize.rawValue))
            .foregroundColor(configuration.textColor)
            .background(configuration.backgroundColor)
            .cornerRadius(configuration.cornerRadius.rawValue)
        }
    }
}

#Preview {
    GenericTextField(text: .constant(""), configuration: .init(placeholder: "Placeholder"))
}
