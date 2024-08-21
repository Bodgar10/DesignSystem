//
//  CellsComponentDemoview.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI
import DesignSystem

struct CellsComponentDemoview: View {
    var body: some View {
        VStack {
            GenericText(configuration: .init(title: "Custom Cell", sizeTitle: .xxLargePlus2, isBold: true))
            CellInfoView(
                icon: .dollarIn,
                titleConfiguration: .init(title: "Salario", sizeTitle: .large, isBold: true),
                subtitleConfiguration: .init(title: "Salario mensual del trabajo"),
                thirdTitleConfiguration: .init(title: "$120,000.00", colorTitle: .green, isBold: true)
            )
            CellInfoView(
                icon: .dollarOut,
                titleConfiguration: .init(title: "Efectivo", sizeTitle: .large, isBold: true),
                subtitleConfiguration: .init(title: "Gasto en frutería semanal"),
                thirdTitleConfiguration: .init(title: "$600.00", colorTitle: .red, isBold: true)
            )
            CellInfoView(
                icon: .safeBox,
                titleConfiguration: .init(title: "Fondo de emergencia", sizeTitle: .large, isBold: true),
                subtitleConfiguration: .init(title: "Ahorro para fondo de emergencia"),
                thirdTitleConfiguration: .init(title: "$10,000.00", colorTitle: .black, isBold: true)
            )
        }
    }
}

#Preview {
    CellsComponentDemoview()
}
