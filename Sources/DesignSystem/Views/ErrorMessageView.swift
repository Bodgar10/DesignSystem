//
//  ErrorMessageView.swift
//  
//
//  Created by Bodgar Espinosa Miranda on 10/09/24.
//

import SwiftUI

public struct ErrorMessageView: View {
    
    private let icon: Image
    private let title: TextConfiguration
    private let subtitle: TextConfiguration
    
    public init(
        icon: Image,
        title: TextConfiguration,
        subtitle: TextConfiguration
    ) {
        self.icon = icon
        self.title = title
        self.subtitle = subtitle
    }
    
    public var body: some View {
        VStack {
            icon
                .resizable()
                .frame(width: 200, height: 220)
                .padding(.horizontal)
            GenericText(configuration: title)
            GenericText(configuration: subtitle)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    ErrorMessageView(
        icon: CashIcons.withoutCash.image,
        title: .init(title: "No tienes lana 😢", 
                     sizeTitle: .xxLargePlus2,isBold: true),
        subtitle: .init(title: "Aún no tienes un movimiento registrado este mes, puedes añadirlo dando click en Registrar Gasto o Ingreso.",
                        sizeTitle: .large)
    )
}
