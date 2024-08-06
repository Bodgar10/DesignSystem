
import Foundation
import SwiftUI

public protocol DesignSystemViewModelProtocol: ObservableObject {
    
    // MARK: - Initializer
    
    init(configuration: DesignSystemConfigurationProtocol, bundleMainApp: Bundle)
}

public protocol DesignSystemConfigurationProtocol: AnyObject {
    
    // MARK: - Properties
    
    var config: [String: AnyObject] { get set }
}

public protocol DesignSystemCoordinatorProtocol: ObservableObject {

    // MARK: - Properties

    var path: NavigationPath { get set }

    // MARK: - Functions

    init(path: NavigationPath, configuration: DesignSystemConfigurationProtocol, bundleMainApp: Bundle?)
    func push(page: DesignSystemPage)
    func popToRoot()
    func pop()
    
    associatedtype view: View
    func build(page: DesignSystemPage) -> view
}