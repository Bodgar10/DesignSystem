
import Foundation
import SwiftUI

public struct DesignSystemModel: Identifiable, Hashable {

    // MARK: - Properties

    public var id: UUID
    public var name: String
    
    public static func == (lhs: DesignSystemModel, rhs: DesignSystemModel) -> Bool {
        return lhs.name == rhs.name
    }
    
    // MARK: - Initializer
    
    public init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}