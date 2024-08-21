//
//  TextComponentDemoview.swift
//  DesignSystemDemo
//
//  Created by Bodgar Espinosa Miranda on 19/08/24.
//

import SwiftUI
import DesignSystem

struct TextComponentDemoview: View {
    var body: some View {
        VStack(spacing: 8) {
            GenericText(configuration: .init(title: "General Text"))
            GenericText(configuration: .init(title: "Title with color and large size", colorTitle: .red, sizeTitle: .large))
            GenericText(configuration: .init(title: "Title with color, large size and bold", colorTitle: .purple, sizeTitle: .large, isBold: true))
        }
    }
}

#Preview {
    TextComponentDemoview()
}
