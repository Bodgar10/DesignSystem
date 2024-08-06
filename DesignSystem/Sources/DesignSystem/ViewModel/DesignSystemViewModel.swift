
import Combine
import Foundation
import SwiftUI

public class DesignSystemViewModel: DesignSystemViewModelProtocol {

    // MARK: - Properties

    private let configuration: DesignSystemConfigurationProtocol
    private let bundleMainApp: Bundle

    // MARK: - Initializer

    public required init(configuration: DesignSystemConfigurationProtocol, bundleMainApp: Bundle) {
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
    }
}