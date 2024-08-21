//
//  CardView.swift
//
//
//  Created by Bodgar Espinosa Miranda on 13/08/24.
//

import SwiftUI

public struct CardView<Content: View>: View {
    let content: Content
    let cornerRadius: Sizes
    let shadowRadius: Sizes
    let padding: Sizes

    /// A customizable card view that allows you to specify the corner radius, shadow radius, padding, and content.
    ///
    /// This view is designed to be flexible and reusable, allowing you to create cards with different styles and content configurations.
    ///
    /// Usage Example:
    /// ```swift
    /// CardView(cornerRadius: .medium, shadowRadius: .xxLarge, padding: .large) {
    ///     VStack {
    ///         Text("Title")
    ///             .font(.headline)
    ///         Text("Subtitle")
    ///             .font(.subheadline)
    ///         HStack {
    ///             Button("Button 1") { /* Action */ }
    ///             Button("Button 2") { /* Action */ }
    ///         }
    ///     }
    /// }
    /// ```
    ///
    /// - Parameters:
    ///   - cornerRadius: A `Sizes` enum value representing the radius of the card's corners. Default is `.xSmall`.
    ///   - shadowRadius: A `Sizes` enum value representing the radius of the card's shadow. Default is `.xxLarge`.
    ///   - padding: A `Sizes` enum value representing the padding inside the card. Default is `.medium`.
    ///   - content: A closure that returns a `Content` view. This view is the main content of the card and can be any SwiftUI view.
    ///
    /// This view applies the specified corner radius and shadow to the background of the card and adds padding around the content.
    public init(
        cornerRadius: Sizes = .xSmall,
        shadowRadius: Sizes = .xxLarge,
        padding: Sizes = .medium, 
        @ViewBuilder content: () -> Content
    ) {
        self.cornerRadius = cornerRadius
        self.shadowRadius = shadowRadius
        self.padding = padding
        self.content = content()
    }

    public var body: some View {
        content
            .padding(CGFloat(padding.rawValue))
            .background(
                RoundedRectangle(cornerRadius: CGFloat(cornerRadius.rawValue))
                    .fill(Color.white)
                    .shadow(radius: CGFloat(shadowRadius.rawValue))
            )
    }
}

