
import Foundation
import SwiftUI

public enum DesignSystemPage: Hashable {
    case root
}

@available(iOS 16, *)
public class DesignSystemCoordinator: DesignSystemCoordinatorProtocol {

    // MARK: - Properties

    @Published public var path = NavigationPath()
    private let configuration: DesignSystemConfigurationProtocol
    private let bundleMainApp: Bundle?

    // MARK: - Initializer

    public required init(path: NavigationPath = NavigationPath(), configuration: DesignSystemConfigurationProtocol, bundleMainApp: Bundle? = nil) {
        self.path = path
        self.configuration = configuration
        self.bundleMainApp = bundleMainApp
        
        print("SUBIENDO ESTO...")
    }
    
    // MARK: - Functions

    public func push(page: DesignSystemPage) {
        path.append(page)
    }
    
    public func popToRoot() {
        path.removeLast(path.count)
    }
    
    public func pop() {
        path.removeLast()
    }

    @ViewBuilder public func build(page: DesignSystemPage) -> some View {
        switch page {
        case .root:
            DesignSystemView(
                viewModel: DesignSystemViewModel(
                    configuration: configuration,
                    bundleMainApp: bundleMainApp ?? .main
                )
            )
        }
    }
}
