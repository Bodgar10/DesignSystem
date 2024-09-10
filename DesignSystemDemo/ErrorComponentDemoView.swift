//
//  ErrorComponentDemoView.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 10/09/24.
//

import SwiftUI
import DesignSystem

struct ErrorComponentDemoView: View {
    var body: some View {
        VStack {
            ErrorMessageView(
                icon: CashIcons.withoutCash.image,
                title: .init(title: "No tienes lana 😢",
                             sizeTitle: .xxLargePlus2,isBold: true),
                subtitle: .init(title: "Aún no tienes un movimiento registrado este mes, puedes añadirlo dando click en Registrar Gasto o Ingreso.",
                                sizeTitle: .large)
            )
        }
    }
}

#Preview {
    ErrorComponentDemoView()
}
