//
//  CellsComponentDemoview.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI
import DesignSystem

struct TestItems: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var money: String
}

struct CellsComponentDemoview: View {
    
    var items: [TestItems] = [
        TestItems(title: "Salario", subtitle: "Salario mensual del trabajo", money: "$120,000.00"),
        TestItems(title: "Efectivo", subtitle: "Gasto en frutería semanal", money: "$600.00"),
        TestItems(title: "Fondo de emergencia", subtitle: "Ahorro para fondo de emergencia", money: "$10,000.00")
    ]
    
    var body: some View {
        VStack {
            GenericText(configuration: .init(title: "Custom Cell", sizeTitle: .xxLargePlus2, isBold: true))
            List {
                ForEach(items) { item in
                    CellInfoView(
                        icon: .dollarIn,
                        titleConfiguration: .init(title: item.title, sizeTitle: .large, isBold: true),
                        subtitleConfiguration: .init(title: item.subtitle),
                        thirdTitleConfiguration: .init(title: item.money, colorTitle: .green, isBold: true)
                    )
                }
            }
        }
    }
}

#Preview {
    CellsComponentDemoview()
}
