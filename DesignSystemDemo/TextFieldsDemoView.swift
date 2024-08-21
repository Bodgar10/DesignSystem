//
//  TextFieldsDemoView.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI
import DesignSystem

struct TextFieldsDemoView: View {
    @State private var firstTextField: String = ""
    @State private var secondTextField: String = ""
    @State private var thirdTextField: String = ""
    
    @State private var selectedOption: PickerOptions = .init(title: "Efectivo", icon: .moneyOut)
    
    var body: some View {
        VStack(spacing: 8) {
            GenericText(configuration: .init(title: "TextFields", sizeTitle: .xxLargePlus2, isBold: true))
            Spacer()
            GenericText(configuration: .init(title: "Normal TextField", sizeTitle: .large, isBold: true))
            GenericTextField(text: $firstTextField, configuration: .init(placeholder: "Escribe tu nombre de usuario"))
            
            GenericText(configuration: .init(title: "Custom TextField", sizeTitle: .large, isBold: true))
            GenericTextField(text: $secondTextField, configuration: .init(placeholder: "Escribe tu teléfono", textColor: .white, fontSize: .large, backgroundColor: .purple.opacity(0.6), keyboardType: .phonePad))
            
            GenericText(configuration: .init(title: "Secure TextField", sizeTitle: .large, isBold: true))
            GenericTextField(text: $thirdTextField, configuration: .init(placeholder: "Escribe tu contraseña", textColor: .white, fontSize: .large, isSecure: true, backgroundColor: .yellow.opacity(0.6)))
            
            GenericText(configuration: .init(title: "Menu TextField", sizeTitle: .large, isBold: true))
            MenuTextField(
                selectedOption: $selectedOption,
                options: [
                    .init(title: "Efectivo", icon: .moneyOut),
                    .init(title: "Tarjeta de Crédito", icon: .creditCard),
                    .init(title: "Tarjeta de Débito", icon: .debitCard)
                ],
                backgroundColor: .purple.opacity(0.65),
                titleColor: .white)
                .padding()
                .previewLayout(.sizeThatFits)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        .padding()
    }
}

#Preview {
    TextFieldsDemoView()
}

public extension View {
    func dismissKeyboardOnTap() -> some View {
        self.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        }
    }
}
