//
//  BalanceCardViewComponentDemoview.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI
import DesignSystem

struct BalanceCardViewComponentDemoview: View {
    var body: some View {
        VStack {
            GenericText(configuration: .init(title: "BalanceCardView", sizeTitle: .xxLargePlus2, isBold: true))
            Spacer()
            BalanceCardView(title: .init(title: "Mi Balance"),
                            subtitle: .init(title: "$9,201.57", sizeTitle: .xxLargePlus2, isBold: true),
                            principalButtonTitle: .init(
                                title: "AGREGAR INGRESO",
                                colorTitle: .white,
                                sizeTitle: .medium,
                                isBold: true
                            ),
                            secondaryButtonTitle: .init(
                                title: "AGREGAR GASTO",
                                colorTitle: .white,
                                sizeTitle: .medium,
                                isBold: true
                            ),
                            principalButtonBackground: .purple,
                            secondaryButtonBackground: .red.opacity(0.7)
            )
            Spacer()
        }
    }
}

#Preview {
    BalanceCardViewComponentDemoview()
}
