//
//  MenuTextField.swift
//
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI

/// A view that displays a menu with selectable options represented as a text field.
///
/// - Properties:
///   - `selectedOption`: A `Binding` to the currently selected `PickerOptions`. Changes to this will update the displayed option.
///   - `options`: An array of `PickerOptions` to be displayed in the menu.
///   - `backgroundColor`: The background color of the menu button.
///   - `titleColor`: The color of the text and icon in the menu button.
///
/// - Initialization:
///   - `selectedOption`: A `Binding` to the `PickerOptions` that is currently selected.
///   - `options`: An array of `PickerOptions` to be displayed as menu items.
///   - `backgroundColor`: The color to use for the background of the menu button.
///   - `titleColor`: The color to use for the text and icon in the menu button.
///
/// - Usage:
///   To use this view, provide a binding to the currently selected option, an array of options, and customize the appearance using `backgroundColor` and `titleColor`.
public struct MenuTextField: View {
    @Binding private var selectedOption: PickerOptions
    private let options: [PickerOptions]
    private let backgroundColor: Color
    private let titleColor: Color
    
    /// Initializes a new `MenuTextField` instance.
    ///
    /// - Parameters:
    ///   - selectedOption: A `Binding` to the currently selected `PickerOptions`. The selected option will be displayed in the menu button.
    ///   - options: An array of `PickerOptions` representing the available choices in the menu.
    ///   - backgroundColor: A `Color` representing the background color of the menu button.
    ///   - titleColor: A `Color` representing the color of the text and icon in the menu button.
    public init(
        selectedOption: Binding<PickerOptions>,
        options: [PickerOptions],
        backgroundColor: Color,
        titleColor: Color
    ) {
        self._selectedOption = selectedOption
        self.options = options
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
    }
    
    public var body: some View {
        Menu {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    selectedOption = option
                }, label: {
                    HStack {
                        option.icon.image
                        Text(option.title)
                    }
                })
            }
        } label: {
            HStack {
                selectedOption.icon.image
                    .resizable()
                    .frame(width: Sizes.iconSmall.rawValue, height: Sizes.iconSmall.rawValue)
                Text(selectedOption.title)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundStyle(.white)
            }
            .padding()
            .background(.purple.opacity(0.65))
            .cornerRadius(8)
        }
    }
}

struct MenuTextField_Previews: PreviewProvider {
    static var previews: some View {
        MenuTextField(
            selectedOption: .constant(.init(title: "Efectivo", icon: .moneyOut)),
            options: [
                .init(title: "Efectivo", icon: .moneyOut),
                .init(title: "Tarjeta de Crédito", icon: .creditCard),
                .init(title: "Tarjeta de Débito", icon: .debitCard)
            ],
            backgroundColor: .purple.opacity(0.65),
            titleColor: .white)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
