//
//  PickerTextField.swift
//
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI

struct PickerTextField: View {
    @State private var selectedOption = "Opción 1"
    let options = ["Opción 1", "Opción 2", "Opción 3"]

    var body: some View {
        Picker("Selecciona una opción", selection: $selectedOption) {
            ForEach(options, id: \.self) { option in
                Text(option).tag(option)
            }
        }
        .pickerStyle(MenuPickerStyle())
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
    }
}

struct PickerTextField_Previews: PreviewProvider {
    static var previews: some View {
        PickerTextField()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
