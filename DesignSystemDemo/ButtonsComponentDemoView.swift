//
//  ButtonsComponentDemoView.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI
import DesignSystem

struct ButtonsComponentDemoView: View {
    var body: some View {
        VStack {
            GenericText(configuration: .init(title: "Buttons", sizeTitle: .xxLargePlus2, isBold: true))
            Spacer()
            GenericText(configuration: .init(title: "Rounded Button", sizeTitle: .large, isBold: true))
            RoundedButton(
                textConfiguration: .init(title: "Title Button", colorTitle: .white, sizeTitle: .large, isBold: true),
                backgroundColor: .purple) {
                    print("Button tapped")
                }
            
            RoundedButton(
                textConfiguration: .init(title: "Title Button", colorTitle: .black, sizeTitle: .large, isBold: true),
                backgroundColor: .yellow) {
                    print("Button tapped")
                }
            Spacer()
        }
    }
}

#Preview {
    ButtonsComponentDemoView()
}
